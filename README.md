# Project Condor

Project Condor regroups several smaller projects with the aim of creating a fully open source quadcopter.

The goals are:

- A large (1m diameter frame), powerful quadcopter.
- Modular, rack-like design that enables easy addition and removal of modules (e.g. camera, on board computer, extra batteries)
- Self-assemblable flight controller using readily available components
- Operation from a computer-based interface

This repository contains files related to the quadcopter model. Checkout the [functional diagram](functional.svg), and a [computer rendition](prototype/preview.png) of the prototype.

## Projects created/ported for Condor

Project | Progress
------ | --------
Controller board [trifle](https://github.com/jodersky/trifle) | ![alpha](https://img.shields.io/badge/progress-alpha-brightgreen.svg)
Pilot firmware [PX4](https://github.com/jodersky/px4-firmware) (porting fork) | ![wip](https://img.shields.io/badge/progress-wip-orange.svg)
Real-time OS [NuttX](https://github.com/jodersky/px4-nuttx) (porting fork) | ![wip](https://img.shields.io/badge/progress-wip-orange.svg)
Virtual cockpit [VFD](https://github.com/jodersky/vfd) | ![milestone](https://img.shields.io/badge/progress-milestone-green.svg)
MAVLink-to-Scala code generation [SBT-MAVLink](https://github.com/jodersky/sbt-mavlink) | ![alpha](https://img.shields.io/badge/progress-alpha-brightgreen.svg)
Joystick remote control substitute [maverick](https://github.com/jodersky/maverick) | ![alpha](https://img.shields.io/badge/progress-alpha-brightgreen.svg)

Progress badges indicate the current state of usability of the project

- ![alpha](https://img.shields.io/badge/progress-alpha-brightgreen.svg): most features available
- ![milestone](https://img.shields.io/badge/progress-milestone-green.svg): some functionality available
- ![wip](https://img.shields.io/badge/progress-wip-orange.svg): work-in-progress, currently minimal functionality

## Other pojects of interest
 - Communication protocol [MAVLink](https://github.com/mavlink/mavlink)
 - Telemetry firmware [SiK](https://github.com/tridge/SiK)
