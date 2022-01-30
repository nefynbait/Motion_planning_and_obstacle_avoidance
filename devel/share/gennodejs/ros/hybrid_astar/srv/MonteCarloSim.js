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

let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------

class MonteCarloSimRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sx = null;
      this.sy = null;
      this.syaw = null;
      this.syaw_t = null;
      this.gx = null;
      this.gy = null;
      this.gyaw = null;
      this.gyaw_t = null;
    }
    else {
      if (initObj.hasOwnProperty('sx')) {
        this.sx = initObj.sx
      }
      else {
        this.sx = 0.0;
      }
      if (initObj.hasOwnProperty('sy')) {
        this.sy = initObj.sy
      }
      else {
        this.sy = 0.0;
      }
      if (initObj.hasOwnProperty('syaw')) {
        this.syaw = initObj.syaw
      }
      else {
        this.syaw = 0.0;
      }
      if (initObj.hasOwnProperty('syaw_t')) {
        this.syaw_t = initObj.syaw_t
      }
      else {
        this.syaw_t = 0.0;
      }
      if (initObj.hasOwnProperty('gx')) {
        this.gx = initObj.gx
      }
      else {
        this.gx = 0.0;
      }
      if (initObj.hasOwnProperty('gy')) {
        this.gy = initObj.gy
      }
      else {
        this.gy = 0.0;
      }
      if (initObj.hasOwnProperty('gyaw')) {
        this.gyaw = initObj.gyaw
      }
      else {
        this.gyaw = 0.0;
      }
      if (initObj.hasOwnProperty('gyaw_t')) {
        this.gyaw_t = initObj.gyaw_t
      }
      else {
        this.gyaw_t = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MonteCarloSimRequest
    // Serialize message field [sx]
    bufferOffset = _serializer.float32(obj.sx, buffer, bufferOffset);
    // Serialize message field [sy]
    bufferOffset = _serializer.float32(obj.sy, buffer, bufferOffset);
    // Serialize message field [syaw]
    bufferOffset = _serializer.float32(obj.syaw, buffer, bufferOffset);
    // Serialize message field [syaw_t]
    bufferOffset = _serializer.float32(obj.syaw_t, buffer, bufferOffset);
    // Serialize message field [gx]
    bufferOffset = _serializer.float32(obj.gx, buffer, bufferOffset);
    // Serialize message field [gy]
    bufferOffset = _serializer.float32(obj.gy, buffer, bufferOffset);
    // Serialize message field [gyaw]
    bufferOffset = _serializer.float32(obj.gyaw, buffer, bufferOffset);
    // Serialize message field [gyaw_t]
    bufferOffset = _serializer.float32(obj.gyaw_t, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MonteCarloSimRequest
    let len;
    let data = new MonteCarloSimRequest(null);
    // Deserialize message field [sx]
    data.sx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sy]
    data.sy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [syaw]
    data.syaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [syaw_t]
    data.syaw_t = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gx]
    data.gx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gy]
    data.gy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gyaw]
    data.gyaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gyaw_t]
    data.gyaw_t = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hybrid_astar/MonteCarloSimRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8510ffb4a4c221f8dc3caa103b7bf3b8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 sx
    float32 sy
    float32 syaw
    float32 syaw_t
    float32 gx
    float32 gy
    float32 gyaw
    float32 gyaw_t
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MonteCarloSimRequest(null);
    if (msg.sx !== undefined) {
      resolved.sx = msg.sx;
    }
    else {
      resolved.sx = 0.0
    }

    if (msg.sy !== undefined) {
      resolved.sy = msg.sy;
    }
    else {
      resolved.sy = 0.0
    }

    if (msg.syaw !== undefined) {
      resolved.syaw = msg.syaw;
    }
    else {
      resolved.syaw = 0.0
    }

    if (msg.syaw_t !== undefined) {
      resolved.syaw_t = msg.syaw_t;
    }
    else {
      resolved.syaw_t = 0.0
    }

    if (msg.gx !== undefined) {
      resolved.gx = msg.gx;
    }
    else {
      resolved.gx = 0.0
    }

    if (msg.gy !== undefined) {
      resolved.gy = msg.gy;
    }
    else {
      resolved.gy = 0.0
    }

    if (msg.gyaw !== undefined) {
      resolved.gyaw = msg.gyaw;
    }
    else {
      resolved.gyaw = 0.0
    }

    if (msg.gyaw_t !== undefined) {
      resolved.gyaw_t = msg.gyaw_t;
    }
    else {
      resolved.gyaw_t = 0.0
    }

    return resolved;
    }
};

class MonteCarloSimResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.valid_start = null;
      this.valid_goal = null;
      this.solution_found = null;
      this.path = null;
      this.iterations = null;
      this.iteration_limit = null;
      this.nodes = null;
      this.execution_time = null;
    }
    else {
      if (initObj.hasOwnProperty('valid_start')) {
        this.valid_start = initObj.valid_start
      }
      else {
        this.valid_start = false;
      }
      if (initObj.hasOwnProperty('valid_goal')) {
        this.valid_goal = initObj.valid_goal
      }
      else {
        this.valid_goal = false;
      }
      if (initObj.hasOwnProperty('solution_found')) {
        this.solution_found = initObj.solution_found
      }
      else {
        this.solution_found = false;
      }
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = new nav_msgs.msg.Path();
      }
      if (initObj.hasOwnProperty('iterations')) {
        this.iterations = initObj.iterations
      }
      else {
        this.iterations = 0;
      }
      if (initObj.hasOwnProperty('iteration_limit')) {
        this.iteration_limit = initObj.iteration_limit
      }
      else {
        this.iteration_limit = false;
      }
      if (initObj.hasOwnProperty('nodes')) {
        this.nodes = initObj.nodes
      }
      else {
        this.nodes = 0;
      }
      if (initObj.hasOwnProperty('execution_time')) {
        this.execution_time = initObj.execution_time
      }
      else {
        this.execution_time = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MonteCarloSimResponse
    // Serialize message field [valid_start]
    bufferOffset = _serializer.bool(obj.valid_start, buffer, bufferOffset);
    // Serialize message field [valid_goal]
    bufferOffset = _serializer.bool(obj.valid_goal, buffer, bufferOffset);
    // Serialize message field [solution_found]
    bufferOffset = _serializer.bool(obj.solution_found, buffer, bufferOffset);
    // Serialize message field [path]
    bufferOffset = nav_msgs.msg.Path.serialize(obj.path, buffer, bufferOffset);
    // Serialize message field [iterations]
    bufferOffset = _serializer.uint64(obj.iterations, buffer, bufferOffset);
    // Serialize message field [iteration_limit]
    bufferOffset = _serializer.bool(obj.iteration_limit, buffer, bufferOffset);
    // Serialize message field [nodes]
    bufferOffset = _serializer.uint64(obj.nodes, buffer, bufferOffset);
    // Serialize message field [execution_time]
    bufferOffset = _serializer.uint64(obj.execution_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MonteCarloSimResponse
    let len;
    let data = new MonteCarloSimResponse(null);
    // Deserialize message field [valid_start]
    data.valid_start = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [valid_goal]
    data.valid_goal = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [solution_found]
    data.solution_found = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [path]
    data.path = nav_msgs.msg.Path.deserialize(buffer, bufferOffset);
    // Deserialize message field [iterations]
    data.iterations = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [iteration_limit]
    data.iteration_limit = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [nodes]
    data.nodes = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [execution_time]
    data.execution_time = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += nav_msgs.msg.Path.getMessageSize(object.path);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hybrid_astar/MonteCarloSimResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '72a5e350f62841c24f464d0dedd7f2cc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool valid_start
    bool valid_goal
    bool solution_found
    nav_msgs/Path path
    uint64 iterations
    bool iteration_limit
    uint64 nodes
    uint64 execution_time
    
    ================================================================================
    MSG: nav_msgs/Path
    #An array of poses that represents a Path for a robot to follow
    Header header
    geometry_msgs/PoseStamped[] poses
    
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
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MonteCarloSimResponse(null);
    if (msg.valid_start !== undefined) {
      resolved.valid_start = msg.valid_start;
    }
    else {
      resolved.valid_start = false
    }

    if (msg.valid_goal !== undefined) {
      resolved.valid_goal = msg.valid_goal;
    }
    else {
      resolved.valid_goal = false
    }

    if (msg.solution_found !== undefined) {
      resolved.solution_found = msg.solution_found;
    }
    else {
      resolved.solution_found = false
    }

    if (msg.path !== undefined) {
      resolved.path = nav_msgs.msg.Path.Resolve(msg.path)
    }
    else {
      resolved.path = new nav_msgs.msg.Path()
    }

    if (msg.iterations !== undefined) {
      resolved.iterations = msg.iterations;
    }
    else {
      resolved.iterations = 0
    }

    if (msg.iteration_limit !== undefined) {
      resolved.iteration_limit = msg.iteration_limit;
    }
    else {
      resolved.iteration_limit = false
    }

    if (msg.nodes !== undefined) {
      resolved.nodes = msg.nodes;
    }
    else {
      resolved.nodes = 0
    }

    if (msg.execution_time !== undefined) {
      resolved.execution_time = msg.execution_time;
    }
    else {
      resolved.execution_time = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: MonteCarloSimRequest,
  Response: MonteCarloSimResponse,
  md5sum() { return 'ef92dc717d72570cde39a1214c59cf11'; },
  datatype() { return 'hybrid_astar/MonteCarloSim'; }
};
