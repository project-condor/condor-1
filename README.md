# Project Condor

Project Condor regroups several smaller projects with the aim of creating a fully open source quadcopter.

The goals are:
- A large (1m diameter frame), powerful quadcopter.
- Modular, rack-like design that enables easy addition and removal of modules (e.g. camera, on board computer, extra batteries)
- Self-assemblable flight controller using readily available components
- Operation from a computer-based interface

This repository contains files related to the quadcopter model. Checkout the [functional diagram](functional.svg), and a [computer rendition](prototype/preview.png) of the prototype.

## Projects created/ported for Condor
 - Controller board [trifle](https://github.com/jodersky/trifle)
 - Pilot firmware [PX4](https://github.com/jodersky/px4-firmware) (porting fork)
 - Real-time OS [NuttX](https://github.com/jodersky/nuttx) (porting fork)
 - Virtual cockpit [VFD](https://github.com/jodersky/vfd)
 - MAVLink-to-Scala code generation [SBT-MAVLink](https://github.com/jodersky/sbt-mavlink)
 - Joystick remote control substitute [maverick](https://github.com/jodersky/maverick)

## Other pojects of interest
 - Communication protocol [MAVLink](https://github.com/mavlink/mavlink)
 - Telemetry firmware [SiK](https://github.com/tridge/SiK)
