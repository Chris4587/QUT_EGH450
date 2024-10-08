# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from spar_msgs/FlightMotionFeedback.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class FlightMotionFeedback(genpy.Message):
  _md5sum = "6f23ddce6055aec8d4fbc59ea65c4cb8"
  _type = "spar_msgs/FlightMotionFeedback"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

# Feedback

float32 progress					# Progress 0..1 from start to goal
bool waiting_for_convergence		# Mark to show if waiting for convergence

geometry_msgs/Point goal_position	# Current goal position
float32 goal_yaw					# Current goal yaw


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  __slots__ = ['progress','waiting_for_convergence','goal_position','goal_yaw']
  _slot_types = ['float32','bool','geometry_msgs/Point','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       progress,waiting_for_convergence,goal_position,goal_yaw

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(FlightMotionFeedback, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.progress is None:
        self.progress = 0.
      if self.waiting_for_convergence is None:
        self.waiting_for_convergence = False
      if self.goal_position is None:
        self.goal_position = geometry_msgs.msg.Point()
      if self.goal_yaw is None:
        self.goal_yaw = 0.
    else:
      self.progress = 0.
      self.waiting_for_convergence = False
      self.goal_position = geometry_msgs.msg.Point()
      self.goal_yaw = 0.

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
      _x = self
      buff.write(_get_struct_fB3df().pack(_x.progress, _x.waiting_for_convergence, _x.goal_position.x, _x.goal_position.y, _x.goal_position.z, _x.goal_yaw))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.goal_position is None:
        self.goal_position = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 33
      (_x.progress, _x.waiting_for_convergence, _x.goal_position.x, _x.goal_position.y, _x.goal_position.z, _x.goal_yaw,) = _get_struct_fB3df().unpack(str[start:end])
      self.waiting_for_convergence = bool(self.waiting_for_convergence)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_fB3df().pack(_x.progress, _x.waiting_for_convergence, _x.goal_position.x, _x.goal_position.y, _x.goal_position.z, _x.goal_yaw))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.goal_position is None:
        self.goal_position = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 33
      (_x.progress, _x.waiting_for_convergence, _x.goal_position.x, _x.goal_position.y, _x.goal_position.z, _x.goal_yaw,) = _get_struct_fB3df().unpack(str[start:end])
      self.waiting_for_convergence = bool(self.waiting_for_convergence)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_fB3df = None
def _get_struct_fB3df():
    global _struct_fB3df
    if _struct_fB3df is None:
        _struct_fB3df = struct.Struct("<fB3df")
    return _struct_fB3df
