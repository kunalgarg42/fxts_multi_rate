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

class highLevelBelief {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.header = null;
      this.probMiss = null;
      this.bt = null;
      this.prob = null;
      this.targetPosDrone = null;
      this.targetPosSegway = null;
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
      if (initObj.hasOwnProperty('probMiss')) {
        this.probMiss = initObj.probMiss
      }
      else {
        this.probMiss = 0.0;
      }
      if (initObj.hasOwnProperty('bt')) {
        this.bt = initObj.bt
      }
      else {
        this.bt = new Array(40).fill(0);
      }
      if (initObj.hasOwnProperty('prob')) {
        this.prob = initObj.prob
      }
      else {
        this.prob = new Array(20).fill(0);
      }
      if (initObj.hasOwnProperty('targetPosDrone')) {
        this.targetPosDrone = initObj.targetPosDrone
      }
      else {
        this.targetPosDrone = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('targetPosSegway')) {
        this.targetPosSegway = initObj.targetPosSegway
      }
      else {
        this.targetPosSegway = new Array(2).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type highLevelBelief
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [probMiss]
    bufferOffset = _serializer.float64(obj.probMiss, buffer, bufferOffset);
    // Check that the constant length array field [bt] has the right length
    if (obj.bt.length !== 40) {
      throw new Error('Unable to serialize array field bt - length must be 40')
    }
    // Serialize message field [bt]
    bufferOffset = _arraySerializer.float64(obj.bt, buffer, bufferOffset, 40);
    // Check that the constant length array field [prob] has the right length
    if (obj.prob.length !== 20) {
      throw new Error('Unable to serialize array field prob - length must be 20')
    }
    // Serialize message field [prob]
    bufferOffset = _arraySerializer.float64(obj.prob, buffer, bufferOffset, 20);
    // Check that the constant length array field [targetPosDrone] has the right length
    if (obj.targetPosDrone.length !== 2) {
      throw new Error('Unable to serialize array field targetPosDrone - length must be 2')
    }
    // Serialize message field [targetPosDrone]
    bufferOffset = _arraySerializer.float64(obj.targetPosDrone, buffer, bufferOffset, 2);
    // Check that the constant length array field [targetPosSegway] has the right length
    if (obj.targetPosSegway.length !== 2) {
      throw new Error('Unable to serialize array field targetPosSegway - length must be 2')
    }
    // Serialize message field [targetPosSegway]
    bufferOffset = _arraySerializer.float64(obj.targetPosSegway, buffer, bufferOffset, 2);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type highLevelBelief
    let len;
    let data = new highLevelBelief(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [probMiss]
    data.probMiss = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [bt]
    data.bt = _arrayDeserializer.float64(buffer, bufferOffset, 40)
    // Deserialize message field [prob]
    data.prob = _arrayDeserializer.float64(buffer, bufferOffset, 20)
    // Deserialize message field [targetPosDrone]
    data.targetPosDrone = _arrayDeserializer.float64(buffer, bufferOffset, 2)
    // Deserialize message field [targetPosSegway]
    data.targetPosSegway = _arrayDeserializer.float64(buffer, bufferOffset, 2)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 521;
  }

  static datatype() {
    // Returns string type for a message object
    return 'segway_sim/highLevelBelief';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '40f96d12b2895b791f2b4d422fdc68d0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 status
    Header header
    float64 probMiss
    float64[40] bt
    float64[20] prob
    float64[2] targetPosDrone
    float64[2] targetPosSegway
    
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
    const resolved = new highLevelBelief(null);
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

    if (msg.probMiss !== undefined) {
      resolved.probMiss = msg.probMiss;
    }
    else {
      resolved.probMiss = 0.0
    }

    if (msg.bt !== undefined) {
      resolved.bt = msg.bt;
    }
    else {
      resolved.bt = new Array(40).fill(0)
    }

    if (msg.prob !== undefined) {
      resolved.prob = msg.prob;
    }
    else {
      resolved.prob = new Array(20).fill(0)
    }

    if (msg.targetPosDrone !== undefined) {
      resolved.targetPosDrone = msg.targetPosDrone;
    }
    else {
      resolved.targetPosDrone = new Array(2).fill(0)
    }

    if (msg.targetPosSegway !== undefined) {
      resolved.targetPosSegway = msg.targetPosSegway;
    }
    else {
      resolved.targetPosSegway = new Array(2).fill(0)
    }

    return resolved;
    }
};

module.exports = highLevelBelief;
