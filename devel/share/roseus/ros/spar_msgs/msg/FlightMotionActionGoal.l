;; Auto-generated. Do not edit!


(when (boundp 'spar_msgs::FlightMotionActionGoal)
  (if (not (find-package "SPAR_MSGS"))
    (make-package "SPAR_MSGS"))
  (shadow 'FlightMotionActionGoal (find-package "SPAR_MSGS")))
(unless (find-package "SPAR_MSGS::FLIGHTMOTIONACTIONGOAL")
  (make-package "SPAR_MSGS::FLIGHTMOTIONACTIONGOAL"))

(in-package "ROS")
;;//! \htmlinclude FlightMotionActionGoal.msg.html
(if (not (find-package "ACTIONLIB_MSGS"))
  (ros::roseus-add-msgs "actionlib_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass spar_msgs::FlightMotionActionGoal
  :super ros::object
  :slots (_header _goal_id _goal ))

(defmethod spar_msgs::FlightMotionActionGoal
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:goal_id __goal_id) (instance actionlib_msgs::GoalID :init))
    ((:goal __goal) (instance spar_msgs::FlightMotionGoal :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _goal_id __goal_id)
   (setq _goal __goal)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:goal_id
   (&rest __goal_id)
   (if (keywordp (car __goal_id))
       (send* _goal_id __goal_id)
     (progn
       (if __goal_id (setq _goal_id (car __goal_id)))
       _goal_id)))
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; actionlib_msgs/GoalID _goal_id
    (send _goal_id :serialization-length)
    ;; spar_msgs/FlightMotionGoal _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; actionlib_msgs/GoalID _goal_id
       (send _goal_id :serialize s)
     ;; spar_msgs/FlightMotionGoal _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; actionlib_msgs/GoalID _goal_id
     (send _goal_id :deserialize buf ptr-) (incf ptr- (send _goal_id :serialization-length))
   ;; spar_msgs/FlightMotionGoal _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(setf (get spar_msgs::FlightMotionActionGoal :md5sum-) "74f6863cc63ccf58f36ff50fd69b7c68")
(setf (get spar_msgs::FlightMotionActionGoal :datatype-) "spar_msgs/FlightMotionActionGoal")
(setf (get spar_msgs::FlightMotionActionGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
FlightMotionGoal goal

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
MSG: actionlib_msgs/GoalID
# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


================================================================================
MSG: spar_msgs/FlightMotionGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Goal

# Motion to execute
uint8 MOTION_STOP = 0				# Stop in current place (ignores x/y/z/yaw/convergence)
uint8 MOTION_GOTO = 1				# Fly to location (x/y/z/yaw)
uint8 MOTION_GOTO_POS = 2			# Fly to location (x/y/z, maintain current yaw)
uint8 MOTION_GOTO_YAW = 3			# Rotate at current location (ignores x/y/z)
uint8 MOTION_TAKEOFF = 4			# Performs a take-off at current location to hight 'z' (ignores x/y/yaw)
uint8 MOTION_LAND = 5				# Performs a landing at current location at vertical speed (ignores x/y/z/yaw)

uint8 motion

# Positional information (some things may be ignored, see above)
geometry_msgs/Point position
float32 yaw

# Velocity information (some things may be ignored, see above)
# Goal will act as \"setpoint\" if all velocities are ==0, values of <0 will be rejected
# If all velocities are ==0, goal will imidiately be finished if not using \"wait_for_convergence\"
# For multiple-directional motions (e.g. goto: motion in x/y/z/yaw), the slowest motion will
# be used to coordinate the motion such that all motions finish at the same point in time
float32 velocity_vertical			# Speed to ascend and descent
float32 velocity_horizontal			# Speed to translate
float32 yawrate						# Speed to rotate

# Convergence information (wait until at location before marking 'complete')
# If enabled, radius and range values of <=0 will be rejected
# Note: Landing motions will do not accept \"wait_for_convergence\", but instead will continue
#		landing until the action is either cancelled or the UAV is disarmed
bool wait_for_convergence			# Enable \"wait for convergence\"
float32 position_radius				# Positional radius around final location (bubble waypoint)
float32 yaw_range					# Angular range around final direction (direction wedge)


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :spar_msgs/FlightMotionActionGoal "74f6863cc63ccf58f36ff50fd69b7c68")


