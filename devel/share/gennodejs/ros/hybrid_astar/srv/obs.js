// Auto-generated. Do not edit!

// (in-package hybrid_astar.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class obsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x_r = null;
      this.y_r = null;
      this.r_r = null;
      this.theta1 = null;
      this.check = null;
    }
    else {
      if (initObj.hasOwnProperty('x_r')) {
        this.x_r = initObj.x_r
      }
      else {
        this.x_r = 0.0;
      }
      if (initObj.hasOwnProperty('y_r')) {
        this.y_r = initObj.y_r
      }
      else {
        this.y_r = 0.0;
      }
      if (initObj.hasOwnProperty('r_r')) {
        this.r_r = initObj.r_r
      }
      else {
        this.r_r = 0.0;
      }
      if (initObj.hasOwnProperty('theta1')) {
        this.theta1 = initObj.theta1
      }
      else {
        this.theta1 = 0.0;
      }
      if (initObj.hasOwnProperty('check')) {
        this.check = initObj.check
      }
      else {
        this.check = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type obsRequest
    // Serialize message field [x_r]
    bufferOffset = _serializer.float64(obj.x_r, buffer, bufferOffset);
    // Serialize message field [y_r]
    bufferOffset = _serializer.float64(obj.y_r, buffer, bufferOffset);
    // Serialize message field [r_r]
    bufferOffset = _serializer.float64(obj.r_r, buffer, bufferOffset);
    // Serialize message field [theta1]
    bufferOffset = _serializer.float64(obj.theta1, buffer, bufferOffset);
    // Serialize message field [check]
    bufferOffset = _serializer.bool(obj.check, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type obsRequest
    let len;
    let data = new obsRequest(null);
    // Deserialize message field [x_r]
    data.x_r = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_r]
    data.y_r = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [r_r]
    data.r_r = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [theta1]
    data.theta1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [check]
    data.check = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 33;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hybrid_astar/obsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '99e59787c4fda523ec72300031359976';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 x_r
    float64 y_r
    float64 r_r
    float64 theta1
    bool check
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new obsRequest(null);
    if (msg.x_r !== undefined) {
      resolved.x_r = msg.x_r;
    }
    else {
      resolved.x_r = 0.0
    }

    if (msg.y_r !== undefined) {
      resolved.y_r = msg.y_r;
    }
    else {
      resolved.y_r = 0.0
    }

    if (msg.r_r !== undefined) {
      resolved.r_r = msg.r_r;
    }
    else {
      resolved.r_r = 0.0
    }

    if (msg.theta1 !== undefined) {
      resolved.theta1 = msg.theta1;
    }
    else {
      resolved.theta1 = 0.0
    }

    if (msg.check !== undefined) {
      resolved.check = msg.check;
    }
    else {
      resolved.check = false
    }

    return resolved;
    }
};

class obsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.obstacles = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = '';
      }
      if (initObj.hasOwnProperty('obstacles')) {
        this.obstacles = initObj.obstacles
      }
      else {
        this.obstacles = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type obsResponse
    // Serialize message field [result]
    bufferOffset = _serializer.string(obj.result, buffer, bufferOffset);
    // Serialize message field [obstacles]
    bufferOffset = _serializer.bool(obj.obstacles, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type obsResponse
    let len;
    let data = new obsResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [obstacles]
    data.obstacles = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.result.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hybrid_astar/obsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd113984db4546f8065e55551ed7b8124';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string result
    bool obstacles
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new obsResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = ''
    }

    if (msg.obstacles !== undefined) {
      resolved.obstacles = msg.obstacles;
    }
    else {
      resolved.obstacles = false
    }

    return resolved;
    }
};

module.exports = {
  Request: obsRequest,
  Response: obsResponse,
  md5sum() { return '5e3dfcf370bd21f423a0f98a6e24c09d'; },
  datatype() { return 'hybrid_astar/obs'; }
};
