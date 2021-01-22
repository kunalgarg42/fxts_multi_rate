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

class goalSetAndState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.header = null;
      this.x = null;
      this.y = null;
      this.xmin = null;
      this.xmax = null;
      this.ymin = null;
      this.ymax = null;
      this.highLevTime = null;
      this.term_xmin = null;
      this.term_xmax = null;
      this.term_ymin = null;
      this.term_ymax = null;
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
      if (initObj.hasOwnProperty('xmin')) {
        this.xmin = initObj.xmin
      }
      else {
        this.xmin = 0.0;
      }
      if (initObj.hasOwnProperty('xmax')) {
        this.xmax = initObj.xmax
      }
      else {
        this.xmax = 0.0;
      }
      if (initObj.hasOwnProperty('ymin')) {
        this.ymin = initObj.ymin
      }
      else {
        this.ymin = 0.0;
      }
      if (initObj.hasOwnProperty('ymax')) {
        this.ymax = initObj.ymax
      }
      else {
        this.ymax = 0.0;
      }
      if (initObj.hasOwnProperty('highLevTime')) {
        this.highLevTime = initObj.highLevTime
      }
      else {
        this.highLevTime = 0.0;
      }
      if (initObj.hasOwnProperty('term_xmin')) {
        this.term_xmin = initObj.term_xmin
      }
      else {
        this.term_xmin = 0.0;
      }
      if (initObj.hasOwnProperty('term_xmax')) {
        this.term_xmax = initObj.term_xmax
      }
      else {
        this.term_xmax = 0.0;
      }
      if (initObj.hasOwnProperty('term_ymin')) {
        this.term_ymin = initObj.term_ymin
      }
      else {
        this.term_ymin = 0.0;
      }
      if (initObj.hasOwnProperty('term_ymax')) {
        this.term_ymax = initObj.term_ymax
      }
      else {
        this.term_ymax = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type goalSetAndState
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [xmin]
    bufferOffset = _serializer.float64(obj.xmin, buffer, bufferOffset);
    // Serialize message field [xmax]
    bufferOffset = _serializer.float64(obj.xmax, buffer, bufferOffset);
    // Serialize message field [ymin]
    bufferOffset = _serializer.float64(obj.ymin, buffer, bufferOffset);
    // Serialize message field [ymax]
    bufferOffset = _serializer.float64(obj.ymax, buffer, bufferOffset);
    // Serialize message field [highLevTime]
    bufferOffset = _serializer.float64(obj.highLevTime, buffer, bufferOffset);
    // Serialize message field [term_xmin]
    bufferOffset = _serializer.float64(obj.term_xmin, buffer, bufferOffset);
    // Serialize message field [term_xmax]
    bufferOffset = _serializer.float64(obj.term_xmax, buffer, bufferOffset);
    // Serialize message field [term_ymin]
    bufferOffset = _serializer.float64(obj.term_ymin, buffer, bufferOffset);
    // Serialize message field [term_ymax]
    bufferOffset = _serializer.float64(obj.term_ymax, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type goalSetAndState
    let len;
    let data = new goalSetAndState(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [xmin]
    data.xmin = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [xmax]
    data.xmax = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ymin]
    data.ymin = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ymax]
    data.ymax = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [highLevTime]
    data.highLevTime = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [term_xmin]
    data.term_xmin = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [term_xmax]
    data.term_xmax = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [term_ymin]
    data.term_ymin = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [term_ymax]
    data.term_ymax = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 89;
  }

  static datatype() {
    // Returns string type for a message object
    return 'segway_sim/goalSetAndState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '137f75e1f80293e076e49dcfbe9ec6bc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 status
    Header header
    float64 x
    float64 y
    float64 xmin
    float64 xmax
    float64 ymin
    float64 ymax
    float64 highLevTime
    float64 term_xmin
    float64 term_xmax
    float64 term_ymin
    float64 term_ymax
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
    const resolved = new goalSetAndState(null);
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

    if (msg.xmin !== undefined) {
      resolved.xmin = msg.xmin;
    }
    else {
      resolved.xmin = 0.0
    }

    if (msg.xmax !== undefined) {
      resolved.xmax = msg.xmax;
    }
    else {
      resolved.xmax = 0.0
    }

    if (msg.ymin !== undefined) {
      resolved.ymin = msg.ymin;
    }
    else {
      resolved.ymin = 0.0
    }

    if (msg.ymax !== undefined) {
      resolved.ymax = msg.ymax;
    }
    else {
      resolved.ymax = 0.0
    }

    if (msg.highLevTime !== undefined) {
      resolved.highLevTime = msg.highLevTime;
    }
    else {
      resolved.highLevTime = 0.0
    }

    if (msg.term_xmin !== undefined) {
      resolved.term_xmin = msg.term_xmin;
    }
    else {
      resolved.term_xmin = 0.0
    }

    if (msg.term_xmax !== undefined) {
      resolved.term_xmax = msg.term_xmax;
    }
    else {
      resolved.term_xmax = 0.0
    }

    if (msg.term_ymin !== undefined) {
      resolved.term_ymin = msg.term_ymin;
    }
    else {
      resolved.term_ymin = 0.0
    }

    if (msg.term_ymax !== undefined) {
      resolved.term_ymax = msg.term_ymax;
    }
    else {
      resolved.term_ymax = 0.0
    }

    return resolved;
    }
};

module.exports = goalSetAndState;
