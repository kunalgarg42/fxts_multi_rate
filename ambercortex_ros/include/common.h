#ifndef INCLUDE_COMMON_H
#define INCLUDE_COMMON_H

union num32_t {
  int32_t i;
  uint32_t ui;
  float f;
  uint8_t c[4];
};

#endif