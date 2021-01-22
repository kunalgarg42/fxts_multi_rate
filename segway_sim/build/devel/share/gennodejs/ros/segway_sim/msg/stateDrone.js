// Auto-generated. Do not edit!

// (in-package segway_sim.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class stateDrone {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.header = null;
      this.time = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.qw = null;
      this.qx = null;
      this.qy = null;
      this.qz = null;
      this.vbx = null;
      this.vby = null;
      this.vbz = null;
      this.omegax = null;
      this.omegay = null;
      this.omegaz = null;
      this.omega1 = null;
      this.omega2 = null;
      this.omega3 = null;
      this.omega4 = null;
      this.vx = null;
      this.vy = null;
      this.vz = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('qw')) {
        this.qw = initObj.qw
      }
      else {
        this.qw = 0.0;
      }
      if (initObj.hasOwnProperty('qx')) {
        this.qx = initObj.qx
      }
      else {
        this.qx = 0.0;
      }
      if (initObj.hasOwnProperty('qy')) {
        this.qy = initObj.qy
      }
      else {
        this.qy = 0.0;
      }
      if (initObj.hasOwnProperty('qz')) {
        this.qz = initObj.qz
      }
      else {
        this.qz = 0.0;
      }
      if (initObj.hasOwnProperty('vbx')) {
        this.vbx = initObj.vbx
      }
      else {
        this.vbx = 0.0;
      }
      if (initObj.hasOwnProperty('vby')) {
        this.vby = initObj.vby
      }
      else {
        this.vby = 0.0;
      }
      if (initObj.hasOwnProperty('vbz')) {
        this.vbz = initObj.vbz
      }
      else {
        this.vbz = 0.0;
      }
      if (initObj.hasOwnProperty('omegax')) {
        this.omegax = initObj.omegax
      }
      else {
        this.omegax = 0.0;
      }
      if (initObj.hasOwnProperty('omegay')) {
        this.omegay = initObj.omegay
      }
      else {
        this.omegay = 0.0;
      }
      if (initObj.hasOwnProperty('omegaz')) {
        this.omegaz = initObj.omegaz
      }
      else {
        this.omegaz = 0.0;
      }
      if (initObj.hasOwnProperty('omega1')) {
        this.omega1 = initObj.omega1
      }
      else {
        this.omega1 = 0.0;
      }
      if (initObj.hasOwnProperty('omega2')) {
        this.omega2 = initObj.omega2
      }
      else {
        this.omega2 = 0.0;
      }
      if (initObj.hasOwnProperty('omega3')) {
        this.omega3 = initObj.omega3
      }
      else {
        this.omega3 = 0.0;
      }
      if (initObj.hasOwnProperty('omega4')) {
        this.omega4 = initObj.omega4
      }
      else {
        this.omega4 = 0.0;
      }
      if (initObj.hasOwnProperty('vx')) {
        this.vx = initObj.vx
      }
      else {
        this.vx = 0.0;
      }
      if (initObj.hasOwnProperty('vy')) {
        this.vy = initObj.vy
      }
      else {
        this.vy = 0.0;
      }
      if (initObj.hasOwnProperty('vz')) {
        this.vz = initObj.vz
      }
      else {
        this.vz = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type stateDrone
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float64(obj.time, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float64(obj.z, buffer, bufferOffset);
    // Serialize message field [qw]
    bufferOffset = _serializer.float64(obj.qw, buffer, bufferOffset);
    // Serialize message field [qx]
    bufferOffset = _serializer.float64(obj.qx, buffer, bufferOffset);
    // Serialize message field [qy]
    bufferOffset = _serializer.float64(obj.qy, buffer, bufferOffset);
    // Serialize message field [qz]
    bufferOffset = _serializer.float64(obj.qz, buffer, bufferOffset);
    // Serialize message field [vbx]
    bufferOffset = _serializer.float64(obj.vbx, buffer, bufferOffset);
    // Serialize message field [vby]
    bufferOffset = _serializer.float64(obj.vby, buffer, bufferOffset);
    // Serialize message field [vbz]
    bufferOffset = _serializer.float64(obj.vbz, buffer, bufferOffset);
    // Serialize message field [omegax]
    bufferOffset = _serializer.float64(obj.omegax, buffer, bufferOffset);
    // Serialize message field [omegay]
    bufferOffset = _serializer.float64(obj.omegay, buffer, bufferOffset);
    // Serialize message field [omegaz]
    bufferOffset = _serializer.float64(obj.omegaz, buffer, bufferOffset);
    // Serialize message field [omega1]
    bufferOffset = _serializer.float64(obj.omega1, buffer, bufferOffset);
    // Serialize message field [omega2]
    bufferOffset = _serializer.float64(obj.omega2, buffer, bufferOffset);
    // Serialize message field [omega3]
    bufferOffset = _serializer.float64(obj.omega3, buffer, bufferOffset);
    // Serialize message field [omega4]
    bufferOffset = _serializer.float64(obj.omega4, buffer, bufferOffset);
    // Serialize message field [vx]
    bufferOffset = _serializer.float64(obj.vx, buffer, bufferOffset);
    // Serialize message field [vy]
    bufferOffset = _serializer.float64(obj.vy, buffer, bufferOffset);
    // Serialize message field [vz]
    bufferOffset = _serializer.float64(obj.vz, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type stateDrone
    let len;
    let data = new stateDrone(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [qw]
    data.qw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [qx]
    data.qx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [qy]
    data.qy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [qz]
    data.qz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vbx]
    data.vbx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vby]
    data.vby = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vbz]
    data.vbz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [omegax]
    data.omegax = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [omegay]
    data.omegay = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [omegaz]
    data.omegaz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [omega1]
    data.omega1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [omega2]
    data.omega2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [omega3]
    data.omega3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [omega4]
    data.omega4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vx]
    data.vx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vy]
    data.vy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vz]
    data.vz = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 169;
  }

  static datatype() {
    // Returns string type for a message object
    return 'segway_sim/stateDrone';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a4896036143d2c9c95e36620834c63e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 status
    Header header
    float64 time
    float64 x
    float64 y
    float64 z
    float64 qw
    float64 qx
    float64 qy
    float64 qz
    float64 vbx
    float64 vby
    float64 vbz
    float64 omegax
    float64 omegay
    float64 omegaz
    float64 omega1
    float64 omega2
    float64 omega3
    float64 omega4
    float64 vx
    float64 vy
    float64 vz
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new stateDrone(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.qw !== undefined) {
      resolved.qw = msg.qw;
    }
    else {
      resolved.qw = 0.0
    }

    if (msg.qx !== undefined) {
      resolved.qx = msg.qx;
    }
    else {
      resolved.qx = 0.0
    }

    if (msg.qy !== undefined) {
      resolved.qy = msg.qy;
    }
    else {
      resolved.qy = 0.0
    }

    if (msg.qz !== undefined) {
      resolved.qz = msg.qz;
    }
    else {
      resolved.qz = 0.0
    }

    if (msg.vbx !== undefined) {
      resolved.vbx = msg.vbx;
    }
    else {
      resolved.vbx = 0.0
    }

    if (msg.vby !== undefined) {
      resolved.vby = msg.vby;
    }
    else {
      resolved.vby = 0.0
    }

    if (msg.vbz !== undefined) {
      resolved.vbz = msg.vbz;
    }
    else {
      resolved.vbz = 0.0
    }

    if (msg.omegax !== undefined) {
      resolved.omegax = msg.omegax;
    }
    else {
      resolved.omegax = 0.0
    }

    if (msg.omegay !== undefined) {
      resolved.omegay = msg.omegay;
    }
    else {
      resolved.omegay = 0.0
    }

    if (msg.omegaz !== undefined) {
      resolved.omegaz = msg.omegaz;
    }
    else {
      resolved.omegaz = 0.0
    }

    if (msg.omega1 !== undefined) {
      resolved.omega1 = msg.omega1;
    }
    else {
      resolved.omega1 = 0.0
    }

    if (msg.omega2 !== undefined) {
      resolved.omega2 = msg.omega2;
    }
    else {
      resolved.omega2 = 0.0
    }

    if (msg.omega3 !== undefined) {
      resolved.omega3 = msg.omega3;
    }
    else {
      resolved.omega3 = 0.0
    }

    if (msg.omega4 !== undefined) {
      resolved.omega4 = msg.omega4;
    }
    else {
      resolved.omega4 = 0.0
    }

    if (msg.vx !== undefined) {
      resolved.vx = msg.vx;
    }
    else {
      resolved.vx = 0.0
    }

    if (msg.vy !== undefined) {
      resolved.vy = msg.vy;
    }
    else {
      resolved.vy = 0.0
    }

    if (msg.vz !== undefined) {
      resolved.vz = msg.vz;
    }
    else {
      resolved.vz = 0.0
    }

    return resolved;
    }
};

module.exports = stateDrone;
