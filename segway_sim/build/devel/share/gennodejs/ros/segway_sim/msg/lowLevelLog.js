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

class lowLevelLog {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.header = null;
      this.time = null;
      this.X = null;
      this.Xn = null;
      this.uMPC = null;
      this.uCBF = null;
      this.uTot = null;
      this.flagQP = null;
      this.V = null;
      this.h = null;
      this.QPtime = null;
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
      if (initObj.hasOwnProperty('X')) {
        this.X = initObj.X
      }
      else {
        this.X = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('Xn')) {
        this.Xn = initObj.Xn
      }
      else {
        this.Xn = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('uMPC')) {
        this.uMPC = initObj.uMPC
      }
      else {
        this.uMPC = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('uCBF')) {
        this.uCBF = initObj.uCBF
      }
      else {
        this.uCBF = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('uTot')) {
        this.uTot = initObj.uTot
      }
      else {
        this.uTot = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('flagQP')) {
        this.flagQP = initObj.flagQP
      }
      else {
        this.flagQP = 0.0;
      }
      if (initObj.hasOwnProperty('V')) {
        this.V = initObj.V
      }
      else {
        this.V = 0.0;
      }
      if (initObj.hasOwnProperty('h')) {
        this.h = initObj.h
      }
      else {
        this.h = 0.0;
      }
      if (initObj.hasOwnProperty('QPtime')) {
        this.QPtime = initObj.QPtime
      }
      else {
        this.QPtime = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type lowLevelLog
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float64(obj.time, buffer, bufferOffset);
    // Check that the constant length array field [X] has the right length
    if (obj.X.length !== 7) {
      throw new Error('Unable to serialize array field X - length must be 7')
    }
    // Serialize message field [X]
    bufferOffset = _arraySerializer.float64(obj.X, buffer, bufferOffset, 7);
    // Check that the constant length array field [Xn] has the right length
    if (obj.Xn.length !== 7) {
      throw new Error('Unable to serialize array field Xn - length must be 7')
    }
    // Serialize message field [Xn]
    bufferOffset = _arraySerializer.float64(obj.Xn, buffer, bufferOffset, 7);
    // Check that the constant length array field [uMPC] has the right length
    if (obj.uMPC.length !== 2) {
      throw new Error('Unable to serialize array field uMPC - length must be 2')
    }
    // Serialize message field [uMPC]
    bufferOffset = _arraySerializer.float64(obj.uMPC, buffer, bufferOffset, 2);
    // Check that the constant length array field [uCBF] has the right length
    if (obj.uCBF.length !== 2) {
      throw new Error('Unable to serialize array field uCBF - length must be 2')
    }
    // Serialize message field [uCBF]
    bufferOffset = _arraySerializer.float64(obj.uCBF, buffer, bufferOffset, 2);
    // Check that the constant length array field [uTot] has the right length
    if (obj.uTot.length !== 2) {
      throw new Error('Unable to serialize array field uTot - length must be 2')
    }
    // Serialize message field [uTot]
    bufferOffset = _arraySerializer.float64(obj.uTot, buffer, bufferOffset, 2);
    // Serialize message field [flagQP]
    bufferOffset = _serializer.float64(obj.flagQP, buffer, bufferOffset);
    // Serialize message field [V]
    bufferOffset = _serializer.float64(obj.V, buffer, bufferOffset);
    // Serialize message field [h]
    bufferOffset = _serializer.float64(obj.h, buffer, bufferOffset);
    // Serialize message field [QPtime]
    bufferOffset = _serializer.float64(obj.QPtime, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type lowLevelLog
    let len;
    let data = new lowLevelLog(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [X]
    data.X = _arrayDeserializer.float64(buffer, bufferOffset, 7)
    // Deserialize message field [Xn]
    data.Xn = _arrayDeserializer.float64(buffer, bufferOffset, 7)
    // Deserialize message field [uMPC]
    data.uMPC = _arrayDeserializer.float64(buffer, bufferOffset, 2)
    // Deserialize message field [uCBF]
    data.uCBF = _arrayDeserializer.float64(buffer, bufferOffset, 2)
    // Deserialize message field [uTot]
    data.uTot = _arrayDeserializer.float64(buffer, bufferOffset, 2)
    // Deserialize message field [flagQP]
    data.flagQP = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [V]
    data.V = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [h]
    data.h = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [QPtime]
    data.QPtime = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 201;
  }

  static datatype() {
    // Returns string type for a message object
    return 'segway_sim/lowLevelLog';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cce8d89a7ce7c3c6725aa883936dac51';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 status
    Header header
    float64 time
    float64[7] X
    float64[7] Xn
    float64[2] uMPC
    float64[2] uCBF
    float64[2] uTot
    float64 flagQP
    float64 V
    float64 h
    float64 QPtime
    
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
    const resolved = new lowLevelLog(null);
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

    if (msg.X !== undefined) {
      resolved.X = msg.X;
    }
    else {
      resolved.X = new Array(7).fill(0)
    }

    if (msg.Xn !== undefined) {
      resolved.Xn = msg.Xn;
    }
    else {
      resolved.Xn = new Array(7).fill(0)
    }

    if (msg.uMPC !== undefined) {
      resolved.uMPC = msg.uMPC;
    }
    else {
      resolved.uMPC = new Array(2).fill(0)
    }

    if (msg.uCBF !== undefined) {
      resolved.uCBF = msg.uCBF;
    }
    else {
      resolved.uCBF = new Array(2).fill(0)
    }

    if (msg.uTot !== undefined) {
      resolved.uTot = msg.uTot;
    }
    else {
      resolved.uTot = new Array(2).fill(0)
    }

    if (msg.flagQP !== undefined) {
      resolved.flagQP = msg.flagQP;
    }
    else {
      resolved.flagQP = 0.0
    }

    if (msg.V !== undefined) {
      resolved.V = msg.V;
    }
    else {
      resolved.V = 0.0
    }

    if (msg.h !== undefined) {
      resolved.h = msg.h;
    }
    else {
      resolved.h = 0.0
    }

    if (msg.QPtime !== undefined) {
      resolved.QPtime = msg.QPtime;
    }
    else {
      resolved.QPtime = 0.0
    }

    return resolved;
    }
};

module.exports = lowLevelLog;
