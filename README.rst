Sawyer Robot
==============

The Sawyer Robot is a platform for development of custom automation applications using the Intera SDK.

This repository contains metapackages and files for installation/use of the Sawyer Robot.

Installation
------------
| Please follow the Getting Started wiki page for instructions on installation of the Intera SDK:
| http://sdk.rethinkrobotics.com/intera/Workstation_Setup

Code & Tickets
--------------

+-----------------+------------------------------------------------------------------------------+
| Documentation   | http://sdk.rethinkrobotics.com/intera/                                       |
+-----------------+------------------------------------------------------------------------------+
| Issues          | https://github.com/RethinkRobotics/sawyer_robot/issues                       |
+-----------------+------------------------------------------------------------------------------+
| Contributions   | https://github.com/RethinkRobotics/sawyer_robot/blob/master/CONTRIBUTING.md  |
+-----------------+------------------------------------------------------------------------------+

Sawyer Repository Overview
--------------------------

::

     .
     |
     +-- sawyer_robot/             sawyer robot metapackage containing all sawyer-specific packages
     |
     +-- sawyer_robot.rosinstall   rosinstall script containing all required sawyer dependency repos
     |
     +-- sawyer_description/       urdf and meshes describing sawyer


Other Sawyer Repositories
-------------------------
+------------------+--------------------------------------------------------+
| intera_sdk       | https://github.com/RethinkRobotics/intera_sdk          |
+------------------+--------------------------------------------------------+
| intera_commom    | https://github.com/RethinkRobotics/intera_common       |
+------------------+--------------------------------------------------------+
| sawyer_moveit    | https://github.com/RethinkRobotics/sawyer_moveit       |
+------------------+--------------------------------------------------------+

Other BYU Repositories
----------------------
+------------------+--------------------------------------------------------+
| vision_pipeline  | https://github.com/michaelsimmons94/vision_pipeline.git|
+------------------+--------------------------------------------------------+
| iai_kinect2      | https://github.com/michaelsimmons94/iai_kinect2.git    |
+------------------+--------------------------------------------------------+
| robot_control    | https://github.com/michaelsimmons94/robot_control.git  |
+------------------+--------------------------------------------------------+
| python_gui       | https://github.com/jhenstrom/python_gui.git            |
+------------------+--------------------------------------------------------+
| robot_faces      | https://github.com/22lizabeth/robot_faces.git          |
+------------------+--------------------------------------------------------+
| RobotDemo        | https://github.com/jspen14/RobotDemo.git               |
+------------------+--------------------------------------------------------+

RosLaunch and Rosservice calls indecending order (higher ones call lower ones)
------------------------------
RUN GUI FOR ROBOT
roslaunch python_gui gui.launch
RUN SERVERS
roslaunch robot_control servers.launch
     rosservice calls
     ----------------
     rosservice call head/pan_to_angle -- [angle in radians]
     rosservice call head/face_forward
     rosservice call gripper/actuate [open/close]
     rosservice call arm/move_to_rest (head as well)
     rosservice call arm/move_arm_to_rest (just arm)
     rosservice call arm/move_away
     rosservice call arm/return_to_position
RUN FACES
roslaunch robot_faces faces.launch
     rosservice calls
     ----------------
     rosservice call faces/change_emotion [letter of emotion]
          **Keys: 'n' - Neutral Face 'h' - Happy Face (not currently active) 'a' - Angry Face 's' - Surprised Face 'd' - Sad
          Face 'f' - Afraid Face (not currently active) 'g' - Disgusted Face (not currently active) 'c' - Confused Face (not
          currently active)
     
     
     

Latest Release Information
--------------------------

http://sdk.rethinkrobotics.com/intera/Release-Changes
