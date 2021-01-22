// deserialize a binary file
// STA.....ENDSTA.....ENDSTA.....END
// where ..... is of given format
// Example: if data is [float64 float32 float32 uint32 uint8]
// format string is "Fffub"

#include <iostream>
#include <fstream>
#include <vector>
#include <numeric>
#include <iomanip>

using namespace std;

union {
  uint8_t  b[4];
  float    f;
  uint32_t u;
} n32;

union {
  uint8_t  b[8];
  double   f;
  uint64_t u;
} n64;

bool check_start(const vector<uint8_t> & buffer) {
  if (buffer[0] == 'S' && buffer[1] == 'T' && buffer [2] == 'A') {
    return true;
  } 
  return false;
}

bool check_end(const vector<uint8_t> & buffer, uint32_t fmat_size) {
  if (buffer.size() > fmat_size+6 && buffer[buffer.size()-3] == 'E' 
      && buffer[buffer.size()-2] == 'N' && buffer[buffer.size()-1 == 'D']) {
    return true;
  }
  return false;
}

int32_t format_length(const string & format) {
    
  int32_t res = 0;

  for (auto it = format.begin(); it != format.end(); ++it) {

    switch(*it) {
      case 'F':
        res += 8;
        break;
      case 'f':
        res += 4;
        break;
      case 'u':
        res += 4;
        break;
      case 'b':
        res += 1;
        break;
      default:
        return -1;
        break;
    }
  }
  return res;
}

int main(int argc, char const *argv[])
{
  if (argc != 3) {
    cout << "Need exactly two input arguments" << endl;
    return 0;
  }

  string filename = argv[1];
  string format = argv[2];

  vector<uint8_t> buffer;

  ifstream myfile;
  myfile.open(filename, ios::binary);

  if (!myfile.is_open()) {
    cout << "Error: could not open file " << argv[1] << endl;
    return 0;
  }

  int32_t fmat_size = format_length(format);
  if (fmat_size <= 0) {
    cout << "Error: invalid format" << endl;
    return 0;
  }

  uint32_t num_err = 0;

  while (!myfile.eof()) {
    // read to buffer
    uint8_t next = myfile.get();
    if (buffer.size() >= 1 || next == 'S')
      buffer.push_back(next);

    if (check_end(buffer, fmat_size)) {
      // extract data
      uint8_t chksum = accumulate(buffer.cbegin()+3, buffer.cend()-4, 0);

      if (fmat_size == buffer.size()-7 && chksum == buffer[buffer.size()-4]) {
        uint32_t pos = 3;

        for (auto it = format.cbegin(); it != format.cend(); ++it) {
          switch (*it) {
            case 'F':   // float64
              copy(buffer.begin()+pos, buffer.begin()+pos+8, n64.b);
              cout << n64.f;
              pos += 8;
              break;            
            case 'f':   // float32
              copy(buffer.begin()+pos, buffer.begin()+pos+4, n32.b);
              cout << n32.f;
              pos += 4;
              break;
            case 'u':   // uint32
              copy(buffer.begin()+pos, buffer.begin()+pos+4, n32.b);
              cout << n32.u;
              pos += 4;
              break;
            case 'b':   // uint8
              cout << int(buffer[pos]);
              pos += 1;
              break;
          }
          if (it != format.cend()-1)
            cout << ",";
        }
        cout << endl;
      } else {
        num_err += 1;
      }
      buffer.clear();
    }
  }

  myfile.close();

  cout << "Number of errors: " << num_err << endl;
 
  return 0;
}
