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

class optSol {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.header = null;
      this.time = null;
      this.optimalSolution = null;
      this.solverFlag = null;
      this.solverTime = null;
      this.x = null;
      this.y = null;
      this.xCurr = null;
      this.x_IC = null;
      this.delay_ms = null;
      this.contPlan = null;
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
      if (initObj.hasOwnProperty('optimalSolution')) {
        this.optimalSolution = initObj.optimalSolution
      }
      else {
        this.optimalSolution = new Array(367).fill(0);
      }
      if (initObj.hasOwnProperty('solverFlag')) {
        this.solverFlag = initObj.solverFlag
      }
      else {
        this.solverFlag = 0.0;
      }
      if (initObj.hasOwnProperty('solverTime')) {
        this.solverTime = initObj.solverTime
      }
      else {
        this.solverTime = 0.0;
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
      if (initObj.hasOwnProperty('xCurr')) {
        this.xCurr = initObj.xCurr
      }
      else {
        this.xCurr = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('x_IC')) {
        this.x_IC = initObj.x_IC
      }
      else {
        this.x_IC = new Array(7).fill(0);
      }
      if (initObj.hasOwnProperty('delay_ms')) {
        this.delay_ms = initObj.delay_ms
      }
      else {
        this.delay_ms = 0.0;
      }
      if (initObj.hasOwnProperty('contPlan')) {
        this.contPlan = initObj.contPlan
      }
      else {
        this.contPlan = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type optSol
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float64(obj.time, buffer, bufferOffset);
    // Check that the constant length array field [optimalSolution] has the right length
    if (obj.optimalSolution.length !== 367) {
      throw new Error('Unable to serialize array field optimalSolution - length must be 367')
    }
    // Serialize message field [optimalSolution]
    bufferOffset = _arraySerializer.float64(obj.optimalSolution, buffer, bufferOffset, 367);
    // Serialize message field [solverFlag]
    bufferOffset = _serializer.float64(obj.solverFlag, buffer, bufferOffset);
    // Serialize message field [solverTime]
    bufferOffset = _serializer.float64(obj.solverTime, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Check that the constant length array field [xCurr] has the right length
    if (obj.xCurr.length !== 7) {
      throw new Error('Unable to serialize array field xCurr - length must be 7')
    }
    // Serialize message field [xCurr]
    bufferOffset = _arraySerializer.float64(obj.xCurr, buffer, bufferOffset, 7);
    // Check that the constant length array field [x_IC] has the right length
    if (obj.x_IC.length !== 7) {
      throw new Error('Unable to serialize array field x_IC - length must be 7')
    }
    // Serialize message field [x_IC]
    bufferOffset = _arraySerializer.float64(obj.x_IC, buffer, bufferOffset, 7);
    // Serialize message field [delay_ms]
    bufferOffset = _serializer.float64(obj.delay_ms, buffer, bufferOffset);
    // Serialize message field [contPlan]
    bufferOffset = _serializer.float64(obj.contPlan, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type optSol
    let len;
    let data = new optSol(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [optimalSolution]
    data.optimalSolution = _arrayDeserializer.float64(buffer, bufferOffset, 367)
    // Deserialize message field [solverFlag]
    data.solverFlag = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [solverTime]
    data.solverTime = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [xCurr]
    data.xCurr = _arrayDeserializer.float64(buffer, bufferOffset, 7)
    // Deserialize message field [x_IC]
    data.x_IC = _arrayDeserializer.float64(buffer, bufferOffset, 7)
    // Deserialize message field [delay_ms]
    data.delay_ms = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [contPlan]
    data.contPlan = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 3105;
  }

  static datatype() {
    // Returns string type for a message object
    return 'segway_sim/optSol';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1db70613ce4d87aefb825b3827121e15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 status
    Header header
    float64 time
    float64[367] optimalSolution
    float64 solverFlag
    float64 solverTime
    float64 x
    float64 y
    float64[7] xCurr
    float64[7] x_IC
    float64 delay_ms
    float64 contPlan
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
    const resolved = new optSol(null);
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

    if (msg.optimalSolution !== undefined) {
      resolved.optimalSolution = msg.optimalSolution;
    }
    else {
      resolved.optimalSolution = new Array(367).fill(0)
    }

    if (msg.solverFlag !== undefined) {
      resolved.solverFlag = msg.solverFlag;
    }
    else {
      resolved.solverFlag = 0.0
    }

    if (msg.solverTime !== undefined) {
      resolved.solverTime = msg.solverTime;
    }
    else {
      resolved.solverTime = 0.0
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

    if (msg.xCurr !== undefined) {
      resolved.xCurr = msg.xCurr;
    }
    else {
      resolved.xCurr = new Array(7).fill(0)
    }

    if (msg.x_IC !== undefined) {
      resolved.x_IC = msg.x_IC;
    }
    else {
      resolved.x_IC = new Array(7).fill(0)
    }

    if (msg.delay_ms !== undefined) {
      resolved.delay_ms = msg.delay_ms;
    }
    else {
      resolved.delay_ms = 0.0
    }

    if (msg.contPlan !== undefined) {
      resolved.contPlan = msg.contPlan;
    }
    else {
      resolved.contPlan = 0.0
    }

    return resolved;
    }
};

module.exports = optSol;
