# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from birl_sim_examples/Add_Gazebo_ModelRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class Add_Gazebo_ModelRequest(genpy.Message):
  _md5sum = "bd9e795de7af30bcc513d8670bda1883"
  _type = "birl_sim_examples/Add_Gazebo_ModelRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """
std_msgs/String model_name


geometry_msgs/Pose model_pose


std_msgs/String model_reference_frame


================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of postion and orientation. 
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
"""
  __slots__ = ['model_name','model_pose','model_reference_frame']
  _slot_types = ['std_msgs/String','geometry_msgs/Pose','std_msgs/String']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       model_name,model_pose,model_reference_frame

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Add_Gazebo_ModelRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.model_name is None:
        self.model_name = std_msgs.msg.String()
      if self.model_pose is None:
        self.model_pose = geometry_msgs.msg.Pose()
      if self.model_reference_frame is None:
        self.model_reference_frame = std_msgs.msg.String()
    else:
      self.model_name = std_msgs.msg.String()
      self.model_pose = geometry_msgs.msg.Pose()
      self.model_reference_frame = std_msgs.msg.String()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.model_name.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d.pack(_x.model_pose.position.x, _x.model_pose.position.y, _x.model_pose.position.z, _x.model_pose.orientation.x, _x.model_pose.orientation.y, _x.model_pose.orientation.z, _x.model_pose.orientation.w))
      _x = self.model_reference_frame.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.model_name is None:
        self.model_name = std_msgs.msg.String()
      if self.model_pose is None:
        self.model_pose = geometry_msgs.msg.Pose()
      if self.model_reference_frame is None:
        self.model_reference_frame = std_msgs.msg.String()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.model_name.data = str[start:end].decode('utf-8')
      else:
        self.model_name.data = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.model_pose.position.x, _x.model_pose.position.y, _x.model_pose.position.z, _x.model_pose.orientation.x, _x.model_pose.orientation.y, _x.model_pose.orientation.z, _x.model_pose.orientation.w,) = _struct_7d.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.model_reference_frame.data = str[start:end].decode('utf-8')
      else:
        self.model_reference_frame.data = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.model_name.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d.pack(_x.model_pose.position.x, _x.model_pose.position.y, _x.model_pose.position.z, _x.model_pose.orientation.x, _x.model_pose.orientation.y, _x.model_pose.orientation.z, _x.model_pose.orientation.w))
      _x = self.model_reference_frame.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.model_name is None:
        self.model_name = std_msgs.msg.String()
      if self.model_pose is None:
        self.model_pose = geometry_msgs.msg.Pose()
      if self.model_reference_frame is None:
        self.model_reference_frame = std_msgs.msg.String()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.model_name.data = str[start:end].decode('utf-8')
      else:
        self.model_name.data = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.model_pose.position.x, _x.model_pose.position.y, _x.model_pose.position.z, _x.model_pose.orientation.x, _x.model_pose.orientation.y, _x.model_pose.orientation.z, _x.model_pose.orientation.w,) = _struct_7d.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.model_reference_frame.data = str[start:end].decode('utf-8')
      else:
        self.model_reference_frame.data = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_7d = struct.Struct("<7d")
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from birl_sim_examples/Add_Gazebo_ModelResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class Add_Gazebo_ModelResponse(genpy.Message):
  _md5sum = "b63f986befa7a8858821abe317753048"
  _type = "birl_sim_examples/Add_Gazebo_ModelResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """

std_msgs/Bool load_status


================================================================================
MSG: std_msgs/Bool
bool data"""
  __slots__ = ['load_status']
  _slot_types = ['std_msgs/Bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       load_status

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Add_Gazebo_ModelResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.load_status is None:
        self.load_status = std_msgs.msg.Bool()
    else:
      self.load_status = std_msgs.msg.Bool()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      buff.write(_struct_B.pack(self.load_status.data))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.load_status is None:
        self.load_status = std_msgs.msg.Bool()
      end = 0
      start = end
      end += 1
      (self.load_status.data,) = _struct_B.unpack(str[start:end])
      self.load_status.data = bool(self.load_status.data)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      buff.write(_struct_B.pack(self.load_status.data))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.load_status is None:
        self.load_status = std_msgs.msg.Bool()
      end = 0
      start = end
      end += 1
      (self.load_status.data,) = _struct_B.unpack(str[start:end])
      self.load_status.data = bool(self.load_status.data)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_B = struct.Struct("<B")
class Add_Gazebo_Model(object):
  _type          = 'birl_sim_examples/Add_Gazebo_Model'
  _md5sum = '4a89e17e67d4f1fa4b02d6868553717a'
  _request_class  = Add_Gazebo_ModelRequest
  _response_class = Add_Gazebo_ModelResponse
