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

class md_robot_msg1 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.interval_time = null;
      this.motor1_rpm = null;
      this.motor1_pos = null;
      this.motor2_rpm = null;
      this.motor2_pos = null;
      this.motor1_state = null;
      this.motor2_state = null;
      this.input_voltage = null;
    }
    else {
      if (initObj.hasOwnProperty('interval_time')) {
        this.interval_time = initObj.interval_time
      }
      else {
        this.interval_time = 0.0;
      }
      if (initObj.hasOwnProperty('motor1_rpm')) {
        this.motor1_rpm = initObj.motor1_rpm
      }
      else {
        this.motor1_rpm = 0;
      }
      if (initObj.hasOwnProperty('motor1_pos')) {
        this.motor1_pos = initObj.motor1_pos
      }
      else {
        this.motor1_pos = 0;
      }
      if (initObj.hasOwnProperty('motor2_rpm')) {
        this.motor2_rpm = initObj.motor2_rpm
      }
      else {
        this.motor2_rpm = 0;
      }
      if (initObj.hasOwnProperty('motor2_pos')) {
        this.motor2_pos = initObj.motor2_pos
      }
      else {
        this.motor2_pos = 0;
      }
      if (initObj.hasOwnProperty('motor1_state')) {
        this.motor1_state = initObj.motor1_state
      }
      else {
        this.motor1_state = 0;
      }
      if (initObj.hasOwnProperty('motor2_state')) {
        this.motor2_state = initObj.motor2_state
      }
      else {
        this.motor2_state = 0;
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
    // Serializes a message object of type md_robot_msg1
    // Serialize message field [interval_time]
    bufferOffset = _serializer.float64(obj.interval_time, buffer, bufferOffset);
    // Serialize message field [motor1_rpm]
    bufferOffset = _serializer.int16(obj.motor1_rpm, buffer, bufferOffset);
    // Serialize message field [motor1_pos]
    bufferOffset = _serializer.int32(obj.motor1_pos, buffer, bufferOffset);
    // Serialize message field [motor2_rpm]
    bufferOffset = _serializer.int16(obj.motor2_rpm, buffer, bufferOffset);
    // Serialize message field [motor2_pos]
    bufferOffset = _serializer.int32(obj.motor2_pos, buffer, bufferOffset);
    // Serialize message field [motor1_state]
    bufferOffset = _serializer.uint8(obj.motor1_state, buffer, bufferOffset);
    // Serialize message field [motor2_state]
    bufferOffset = _serializer.uint8(obj.motor2_state, buffer, bufferOffset);
    // Serialize message field [input_voltage]
    bufferOffset = _serializer.float32(obj.input_voltage, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type md_robot_msg1
    let len;
    let data = new md_robot_msg1(null);
    // Deserialize message field [interval_time]
    data.interval_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [motor1_rpm]
    data.motor1_rpm = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [motor1_pos]
    data.motor1_pos = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [motor2_rpm]
    data.motor2_rpm = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [motor2_pos]
    data.motor2_pos = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [motor1_state]
    data.motor1_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [motor2_state]
    data.motor2_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [input_voltage]
    data.input_voltage = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'md/md_robot_msg1';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5f9c226b917ed3bb79f983ee199f83ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 interval_time
    int16 motor1_rpm
    int32 motor1_pos
    int16 motor2_rpm
    int32 motor2_pos
    uint8 motor1_state
    uint8 motor2_state
    float32 input_voltage
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new md_robot_msg1(null);
    if (msg.interval_time !== undefined) {
      resolved.interval_time = msg.interval_time;
    }
    else {
      resolved.interval_time = 0.0
    }

    if (msg.motor1_rpm !== undefined) {
      resolved.motor1_rpm = msg.motor1_rpm;
    }
    else {
      resolved.motor1_rpm = 0
    }

    if (msg.motor1_pos !== undefined) {
      resolved.motor1_pos = msg.motor1_pos;
    }
    else {
      resolved.motor1_pos = 0
    }

    if (msg.motor2_rpm !== undefined) {
      resolved.motor2_rpm = msg.motor2_rpm;
    }
    else {
      resolved.motor2_rpm = 0
    }

    if (msg.motor2_pos !== undefined) {
      resolved.motor2_pos = msg.motor2_pos;
    }
    else {
      resolved.motor2_pos = 0
    }

    if (msg.motor1_state !== undefined) {
      resolved.motor1_state = msg.motor1_state;
    }
    else {
      resolved.motor1_state = 0
    }

    if (msg.motor2_state !== undefined) {
      resolved.motor2_state = msg.motor2_state;
    }
    else {
      resolved.motor2_state = 0
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

module.exports = md_robot_msg1;
