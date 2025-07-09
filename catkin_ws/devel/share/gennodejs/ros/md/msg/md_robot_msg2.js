// Auto-generated. Do not edit!

// (in-package md.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class md_robot_msg2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.interval_time = null;
      this.x_pos = null;
      this.y_pos = null;
      this.angule = null;
      this.US_1 = null;
      this.US_2 = null;
      this.US_3 = null;
      this.US_4 = null;
      this.platform_state = null;
      this.linear_velocity = null;
      this.angular_velocity = null;
      this.input_voltage = null;
    }
    else {
      if (initObj.hasOwnProperty('interval_time')) {
        this.interval_time = initObj.interval_time
      }
      else {
        this.interval_time = 0.0;
      }
      if (initObj.hasOwnProperty('x_pos')) {
        this.x_pos = initObj.x_pos
      }
      else {
        this.x_pos = 0;
      }
      if (initObj.hasOwnProperty('y_pos')) {
        this.y_pos = initObj.y_pos
      }
      else {
        this.y_pos = 0;
      }
      if (initObj.hasOwnProperty('angule')) {
        this.angule = initObj.angule
      }
      else {
        this.angule = 0;
      }
      if (initObj.hasOwnProperty('US_1')) {
        this.US_1 = initObj.US_1
      }
      else {
        this.US_1 = 0;
      }
      if (initObj.hasOwnProperty('US_2')) {
        this.US_2 = initObj.US_2
      }
      else {
        this.US_2 = 0;
      }
      if (initObj.hasOwnProperty('US_3')) {
        this.US_3 = initObj.US_3
      }
      else {
        this.US_3 = 0;
      }
      if (initObj.hasOwnProperty('US_4')) {
        this.US_4 = initObj.US_4
      }
      else {
        this.US_4 = 0;
      }
      if (initObj.hasOwnProperty('platform_state')) {
        this.platform_state = initObj.platform_state
      }
      else {
        this.platform_state = 0;
      }
      if (initObj.hasOwnProperty('linear_velocity')) {
        this.linear_velocity = initObj.linear_velocity
      }
      else {
        this.linear_velocity = 0;
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = 0;
      }
      if (initObj.hasOwnProperty('input_voltage')) {
        this.input_voltage = initObj.input_voltage
      }
      else {
        this.input_voltage = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type md_robot_msg2
    // Serialize message field [interval_time]
    bufferOffset = _serializer.float64(obj.interval_time, buffer, bufferOffset);
    // Serialize message field [x_pos]
    bufferOffset = _serializer.int32(obj.x_pos, buffer, bufferOffset);
    // Serialize message field [y_pos]
    bufferOffset = _serializer.int32(obj.y_pos, buffer, bufferOffset);
    // Serialize message field [angule]
    bufferOffset = _serializer.int16(obj.angule, buffer, bufferOffset);
    // Serialize message field [US_1]
    bufferOffset = _serializer.uint8(obj.US_1, buffer, bufferOffset);
    // Serialize message field [US_2]
    bufferOffset = _serializer.uint8(obj.US_2, buffer, bufferOffset);
    // Serialize message field [US_3]
    bufferOffset = _serializer.uint8(obj.US_3, buffer, bufferOffset);
    // Serialize message field [US_4]
    bufferOffset = _serializer.uint8(obj.US_4, buffer, bufferOffset);
    // Serialize message field [platform_state]
    bufferOffset = _serializer.uint8(obj.platform_state, buffer, bufferOffset);
    // Serialize message field [linear_velocity]
    bufferOffset = _serializer.int16(obj.linear_velocity, buffer, bufferOffset);
    // Serialize message field [angular_velocity]
    bufferOffset = _serializer.int16(obj.angular_velocity, buffer, bufferOffset);
    // Serialize message field [input_voltage]
    bufferOffset = _serializer.float32(obj.input_voltage, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type md_robot_msg2
    let len;
    let data = new md_robot_msg2(null);
    // Deserialize message field [interval_time]
    data.interval_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x_pos]
    data.x_pos = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [y_pos]
    data.y_pos = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [angule]
    data.angule = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [US_1]
    data.US_1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [US_2]
    data.US_2 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [US_3]
    data.US_3 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [US_4]
    data.US_4 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [platform_state]
    data.platform_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [linear_velocity]
    data.linear_velocity = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [angular_velocity]
    data.angular_velocity = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [input_voltage]
    data.input_voltage = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 31;
  }

  static datatype() {
    // Returns string type for a message object
    return 'md/md_robot_msg2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'de9f2ebda4cc402f2af0c2ecca0409bf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 interval_time
    int32 x_pos
    int32 y_pos
    int16 angule
    uint8 US_1
    uint8 US_2
    uint8 US_3
    uint8 US_4
    uint8 platform_state
    int16 linear_velocity
    int16 angular_velocity
    float32 input_voltage
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new md_robot_msg2(null);
    if (msg.interval_time !== undefined) {
      resolved.interval_time = msg.interval_time;
    }
    else {
      resolved.interval_time = 0.0
    }

    if (msg.x_pos !== undefined) {
      resolved.x_pos = msg.x_pos;
    }
    else {
      resolved.x_pos = 0
    }

    if (msg.y_pos !== undefined) {
      resolved.y_pos = msg.y_pos;
    }
    else {
      resolved.y_pos = 0
    }

    if (msg.angule !== undefined) {
      resolved.angule = msg.angule;
    }
    else {
      resolved.angule = 0
    }

    if (msg.US_1 !== undefined) {
      resolved.US_1 = msg.US_1;
    }
    else {
      resolved.US_1 = 0
    }

    if (msg.US_2 !== undefined) {
      resolved.US_2 = msg.US_2;
    }
    else {
      resolved.US_2 = 0
    }

    if (msg.US_3 !== undefined) {
      resolved.US_3 = msg.US_3;
    }
    else {
      resolved.US_3 = 0
    }

    if (msg.US_4 !== undefined) {
      resolved.US_4 = msg.US_4;
    }
    else {
      resolved.US_4 = 0
    }

    if (msg.platform_state !== undefined) {
      resolved.platform_state = msg.platform_state;
    }
    else {
      resolved.platform_state = 0
    }

    if (msg.linear_velocity !== undefined) {
      resolved.linear_velocity = msg.linear_velocity;
    }
    else {
      resolved.linear_velocity = 0
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = msg.angular_velocity;
    }
    else {
      resolved.angular_velocity = 0
    }

    if (msg.input_voltage !== undefined) {
      resolved.input_voltage = msg.input_voltage;
    }
    else {
      resolved.input_voltage = 0.0
    }

    return resolved;
    }
};

module.exports = md_robot_msg2;
