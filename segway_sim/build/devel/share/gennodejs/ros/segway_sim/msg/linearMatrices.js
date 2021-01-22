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

class linearMatrices {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.header = null;
      this.Alinear = null;
      this.Blinear = null;
      this.Clinear = null;
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
      if (initObj.hasOwnProperty('Alinear')) {
        this.Alinear = initObj.Alinear
      }
      else {
        this.Alinear = new Array(49).fill(0);
      }
      if (initObj.hasOwnProperty('Blinear')) {
        this.Blinear = initObj.Blinear
      }
      else {
        this.Blinear = new Array(14).fill(0);
      }
      if (initObj.hasOwnProperty('Clinear')) {
        this.Clinear = initObj.Clinear
      }
      else {
        this.Clinear = new Array(7).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type linearMatrices
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [Alinear] has the right length
    if (obj.Alinear.length !== 49) {
      throw new Error('Unable to serialize array field Alinear - length must be 49')
    }
    // Serialize message field [Alinear]
    bufferOffset = _arraySerializer.float64(obj.Alinear, buffer, bufferOffset, 49);
    // Check that the constant length array field [Blinear] has the right length
    if (obj.Blinear.length !== 14) {
      throw new Error('Unable to serialize array field Blinear - length must be 14')
    }
    // Serialize message field [Blinear]
    bufferOffset = _arraySerializer.float64(obj.Blinear, buffer, bufferOffset, 14);
    // Check that the constant length array field [Clinear] has the right length
    if (obj.Clinear.length !== 7) {
      throw new Error('Unable to serialize array field Clinear - length must be 7')
    }
    // Serialize message field [Clinear]
    bufferOffset = _arraySerializer.float64(obj.Clinear, buffer, bufferOffset, 7);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type linearMatrices
    let len;
    let data = new linearMatrices(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [Alinear]
    data.Alinear = _arrayDeserializer.float64(buffer, bufferOffset, 49)
    // Deserialize message field [Blinear]
    data.Blinear = _arrayDeserializer.float64(buffer, bufferOffset, 14)
    // Deserialize message field [Clinear]
    data.Clinear = _arrayDeserializer.float64(buffer, bufferOffset, 7)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 561;
  }

  static datatype() {
    // Returns string type for a message object
    return 'segway_sim/linearMatrices';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ad477ebebaec390b562aab51cae5a720';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 status
    Header header
    float64[49] Alinear
    float64[14] Blinear
    float64[7] Clinear
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
    const resolved = new linearMatrices(null);
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

    if (msg.Alinear !== undefined) {
      resolved.Alinear = msg.Alinear;
    }
    else {
      resolved.Alinear = new Array(49).fill(0)
    }

    if (msg.Blinear !== undefined) {
      resolved.Blinear = msg.Blinear;
    }
    else {
      resolved.Blinear = new Array(14).fill(0)
    }

    if (msg.Clinear !== undefined) {
      resolved.Clinear = msg.Clinear;
    }
    else {
      resolved.Clinear = new Array(7).fill(0)
    }

    return resolved;
    }
};

module.exports = linearMatrices;
