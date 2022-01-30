// Auto-generated. Do not edit!

// (in-package hybrid_astar.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TestSummary {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.successful_tests = null;
      this.unsuccessful_tests = null;
      this.iteration_limits = null;
      this.total_tests = null;
    }
    else {
      if (initObj.hasOwnProperty('successful_tests')) {
        this.successful_tests = initObj.successful_tests
      }
      else {
        this.successful_tests = 0;
      }
      if (initObj.hasOwnProperty('unsuccessful_tests')) {
        this.unsuccessful_tests = initObj.unsuccessful_tests
      }
      else {
        this.unsuccessful_tests = 0;
      }
      if (initObj.hasOwnProperty('iteration_limits')) {
        this.iteration_limits = initObj.iteration_limits
      }
      else {
        this.iteration_limits = 0;
      }
      if (initObj.hasOwnProperty('total_tests')) {
        this.total_tests = initObj.total_tests
      }
      else {
        this.total_tests = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TestSummary
    // Serialize message field [successful_tests]
    bufferOffset = _serializer.uint64(obj.successful_tests, buffer, bufferOffset);
    // Serialize message field [unsuccessful_tests]
    bufferOffset = _serializer.uint64(obj.unsuccessful_tests, buffer, bufferOffset);
    // Serialize message field [iteration_limits]
    bufferOffset = _serializer.uint64(obj.iteration_limits, buffer, bufferOffset);
    // Serialize message field [total_tests]
    bufferOffset = _serializer.uint64(obj.total_tests, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TestSummary
    let len;
    let data = new TestSummary(null);
    // Deserialize message field [successful_tests]
    data.successful_tests = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [unsuccessful_tests]
    data.unsuccessful_tests = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [iteration_limits]
    data.iteration_limits = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [total_tests]
    data.total_tests = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hybrid_astar/TestSummary';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bfac551d5488bc9c563aaa33200405e9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 successful_tests
    uint64 unsuccessful_tests
    uint64 iteration_limits
    uint64 total_tests
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TestSummary(null);
    if (msg.successful_tests !== undefined) {
      resolved.successful_tests = msg.successful_tests;
    }
    else {
      resolved.successful_tests = 0
    }

    if (msg.unsuccessful_tests !== undefined) {
      resolved.unsuccessful_tests = msg.unsuccessful_tests;
    }
    else {
      resolved.unsuccessful_tests = 0
    }

    if (msg.iteration_limits !== undefined) {
      resolved.iteration_limits = msg.iteration_limits;
    }
    else {
      resolved.iteration_limits = 0
    }

    if (msg.total_tests !== undefined) {
      resolved.total_tests = msg.total_tests;
    }
    else {
      resolved.total_tests = 0
    }

    return resolved;
    }
};

module.exports = TestSummary;
