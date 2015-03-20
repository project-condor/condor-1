# Project Condor

DIY Quadcopter - work in progress.

Project Condor regroups several smaller projects with the aim of creating a fully open source quadcopter.
The goals are:
 - A large (1m diamater frame), powerful quadcopter.
 - Modular, rack-like design that enables easy addition and removal of modules (e.g. camera, on board computer, extra batteries)
 - Self-assemblable flight controller using readily available components
 - Operation from a computer-based interface

## Projects created/ported for Condor
 - Controller board [trifle](https://github.com/jodersky/trifle)
 - Pilot firmware [PX4](https://github.com/jodersky/px4-firmware) (porting fork)
 - Real-time OS [NuttX](https://github.com/jodersky/nuttx) (porting fork)
 - Virtual cockpit [VFD](https://github.com/jodersky/vfd)
 - MAVLink-to-Scala code generation [SBT-MAVLink](https://github.com/jodersky/sbt-mavlink)
 - Joystick remote control substitute [maverick](https://github.com/jodersky/maverick)

## Related projects
 - Communication protocol [MAVLink](https://github.com/mavlink/mavlink)
 - Telemetry firmware [SiK](https://github.com/tridge/SiK)