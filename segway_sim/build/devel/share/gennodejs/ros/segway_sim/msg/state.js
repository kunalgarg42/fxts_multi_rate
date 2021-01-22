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

class state {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.header = null;
      this.time = null;
      this.x = null;
      this.y = null;
      this.theta = null;
      this.v = null;
      this.thetaDot = null;
      this.psi = null;
      this.psiDot = null;
      this.stateVec = null;
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
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
      if (initObj.hasOwnProperty('v')) {
        this.v = initObj.v
      }
      else {
        this.v = 0.0;
      }
      if (initObj.hasOwnProperty('thetaDot')) {
        this.thetaDot = initObj.thetaDot
      }
      else {
        this.thetaDot = 0.0;
      }
      if (initObj.hasOwnProperty('psi')) {
        this.psi = initObj.psi
      }
      else {
        this.psi = 0.0;
      }
      if (initObj.hasOwnProperty('psiDot')) {
        this.psiDot = initObj.psiDot
      }
      else {
        this.psiDot = 0.0;
      }
      if (initObj.hasOwnProperty('stateVec')) {
        this.stateVec = initObj.stateVec
      }
      else {
        this.stateVec = new Array(7).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type state
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
    // Serialize message field [theta]
    bufferOffset = _serializer.float64(obj.theta, buffer, bufferOffset);
    // Serialize message field [v]
    bufferOffset = _serializer.float64(obj.v, buffer, bufferOffset);
    // Serialize message field [thetaDot]
    bufferOffset = _serializer.float64(obj.thetaDot, buffer, bufferOffset);
    // Serialize message field [psi]
    bufferOffset = _serializer.float64(obj.psi, buffer, bufferOffset);
    // Serialize message field [psiDot]
    bufferOffset = _serializer.float64(obj.psiDot, buffer, bufferOffset);
    // Check that the constant length array field [stateVec] has the right length
    if (obj.stateVec.length !== 7) {
      throw new Error('Unable to serialize array field stateVec - length must be 7')
    }
    // Serialize message field [stateVec]
    bufferOffset = _arraySerializer.float64(obj.stateVec, buffer, bufferOffset, 7);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type state
    let len;
    let data = new state(null);
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
    // Deserialize message field [theta]
    data.theta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v]
    data.v = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [thetaDot]
    data.thetaDot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [psi]
    data.psi = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [psiDot]
    data.psiDot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [stateVec]
    data.stateVec = _arrayDeserializer.float64(buffer, bufferOffset, 7)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 121;
  }

  static datatype() {
    // Returns string type for a message object
    return 'segway_sim/state';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6b60dcbd240a7165577e64ea8154367d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 status
    Header header
    float64 time
    float64 x
    float64 y
    float64 theta
    float64 v
    float64 thetaDot
    float64 psi
    float64 psiDot
    float64[7] stateVec
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
    const resolved = new state(null);
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

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    if (msg.v !== undefined) {
      resolved.v = msg.v;
    }
    else {
      resolved.v = 0.0
    }

    if (msg.thetaDot !== undefined) {
      resolved.thetaDot = msg.thetaDot;
    }
    else {
      resolved.thetaDot = 0.0
    }

    if (msg.psi !== undefined) {
      resolved.psi = msg.psi;
    }
    else {
      resolved.psi = 0.0
    }

    if (msg.psiDot !== undefined) {
      resolved.psiDot = msg.psiDot;
    }
    else {
      resolved.psiDot = 0.0
    }

    if (msg.stateVec !== undefined) {
      resolved.stateVec = msg.stateVec;
    }
    else {
      resolved.stateVec = new Array(7).fill(0)
    }

    return resolved;
    }
};

module.exports = state;
