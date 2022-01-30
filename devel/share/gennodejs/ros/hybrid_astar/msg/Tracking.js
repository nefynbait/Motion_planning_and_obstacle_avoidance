// Auto-generated. Do not edit!

// (in-package hybrid_astar.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------

class Tracking {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reference_path = null;
      this.tracked_path = null;
      this.err_lat = null;
      this.cross_track = null;
    }
    else {
      if (initObj.hasOwnProperty('reference_path')) {
        this.reference_path = initObj.reference_path
      }
      else {
        this.reference_path = new nav_msgs.msg.Path();
      }
      if (initObj.hasOwnProperty('tracked_path')) {
        this.tracked_path = initObj.tracked_path
      }
      else {
        this.tracked_path = new nav_msgs.msg.Path();
      }
      if (initObj.hasOwnProperty('err_lat')) {
        this.err_lat = initObj.err_lat
      }
      else {
        this.err_lat = [];
      }
      if (initObj.hasOwnProperty('cross_track')) {
        this.cross_track = initObj.cross_track
      }
      else {
        this.cross_track = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Tracking
    // Serialize message field [reference_path]
    bufferOffset = nav_msgs.msg.Path.serialize(obj.reference_path, buffer, bufferOffset);
    // Serialize message field [tracked_path]
    bufferOffset = nav_msgs.msg.Path.serialize(obj.tracked_path, buffer, bufferOffset);
    // Serialize message field [err_lat]
    bufferOffset = _arraySerializer.float32(obj.err_lat, buffer, bufferOffset, null);
    // Serialize message field [cross_track]
    bufferOffset = _arraySerializer.float32(obj.cross_track, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Tracking
    let len;
    let data = new Tracking(null);
    // Deserialize message field [reference_path]
    data.reference_path = nav_msgs.msg.Path.deserialize(buffer, bufferOffset);
    // Deserialize message field [tracked_path]
    data.tracked_path = nav_msgs.msg.Path.deserialize(buffer, bufferOffset);
    // Deserialize message field [err_lat]
    data.err_lat = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [cross_track]
    data.cross_track = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += nav_msgs.msg.Path.getMessageSize(object.reference_path);
    length += nav_msgs.msg.Path.getMessageSize(object.tracked_path);
    length += 4 * object.err_lat.length;
    length += 4 * object.cross_track.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hybrid_astar/Tracking';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f3b47e58b22562424a28f29828be59bf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    nav_msgs/Path reference_path
    nav_msgs/Path tracked_path
    float32[] err_lat
    float32[] cross_track
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
    const resolved = new Tracking(null);
    if (msg.reference_path !== undefined) {
      resolved.reference_path = nav_msgs.msg.Path.Resolve(msg.reference_path)
    }
    else {
      resolved.reference_path = new nav_msgs.msg.Path()
    }

    if (msg.tracked_path !== undefined) {
      resolved.tracked_path = nav_msgs.msg.Path.Resolve(msg.tracked_path)
    }
    else {
      resolved.tracked_path = new nav_msgs.msg.Path()
    }

    if (msg.err_lat !== undefined) {
      resolved.err_lat = msg.err_lat;
    }
    else {
      resolved.err_lat = []
    }

    if (msg.cross_track !== undefined) {
      resolved.cross_track = msg.cross_track;
    }
    else {
      resolved.cross_track = []
    }

    return resolved;
    }
};

module.exports = Tracking;
