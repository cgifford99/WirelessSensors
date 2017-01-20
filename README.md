# WirelessSensors
Wireless Sensors Flex Friday project repo

Here's a link to our Waffle.io management board: https://waffle.io/cgifford99/WirelessSensors/join

## Current Schedule
- [x] Project Proposal  | September 9th-September 30th
- [x] Research          | September 30th-October 7th
- [ ] Data pro design   | October 7th- December 23rd
- [ ] Testing/Debugging | December 23rd-April 7th 2017
- [ ] Finalize product  | March 3rd 2017-May 19th 2017
- [ ] Presentation      | May 19th 2017-June 9th 2017

# Wireless Sensors Proposal
## Abstract
The Wireless Sensor group’s overall goal is to create an easier and more cost-effective way to wirelessly transmit data from classroom   experiments from sensors through a communication chip to internet-enabled devices such as computers, laptops, tablets and smartphones. This system will allow students to easily customize how data is collected and manipulate data to fit their needs. It also allows teachers to view   the student’s data. Although this system will be useful in many fields, the project is going to initially focus on the educational market. This technology currently exists from other corporations, but it’s slow, expensive, complicated and unreliable. The team’s alternative will be faster, less expensive, user friendly and will deliver consistent results again and again. Furthermore, the current systems use wires, that get tangled and get lost. All of these wires can be eliminated with the use of radio communication and this is what the Wireless Sensor Team plans to do.

## Problem Statement
Currently there is no easy way to collect, store and share data from classroom science experiments simply by running the experiment and having data automatically appear on a shared website using low-cost components and inexpensive, yet effective software. Vernier is a company that produces a product along the lines of what we are creating, but it’s expensive, slow, and hard to access data. Products produced by Vernier, such as LabQuest, cost over $300 and need the use of another source, such as a PC, to process the collected data.

## Goals and Objectives
* Goal 1: Create a working prototype that sends information from a Raspberry Pi Zero/Arduino Micro to a Raspberry Pi 3.

  * Objective A: Discuss what teams are necessary, what project managing software to use, whether to use a Raspberry Pi Zero or an Arduino Micro to control the sensors and whether to make another prototype for the Rpi Zero or not.
  * Objective B: If the Rpi Zero is going to be used, code will need to be converted from the Arduino C++ language to C++ on the Rpi Zero.
  * Objective C: Create a prototype that includes the necessary components to interact with the Rpi 3 (the Hub).
  * Objective D: Debug data collection process and code (if necessary).



* Goal 2: Develop a cloud-based software for data storage and data transfer.

  * Objective A: Study Flask-SQLAlchemy (a framework to connect to a SQL database on the Rpi 3 and a browser on another device)
  * Objective B: Create and test a connection between the Rpi 3 SQL database and Flask-SQLAlchemy

* Goal 3: Finalize the product so that it both looks and works well for users.

  * Objective A: Design, order and solder a PCB (printed circuit board) that integrates with the Rpi Zero as well as the Rpi 3 in a more compact and visually attractive method.
  * Objective B: Use solidworks or another 3D design software to design an enclosure for the Rpi 3 and the Rpi Zero/Arduino Micro.
  * Objective C: Complete, debug and finish the product.
  
## Our Team
**Christopher Gifford**: Christopher is a Junior and project manager of the Wireless Sensors group. Last year he managed the sensors portion of the wireless group and learned a variety of other skills like 3D design, PCB design, and more C++ programming since then. 

**Lewis Woodard**: Lewis is a Sophomore at Baxter Academy for Technology and Science who is a part of the Wireless Sensors project for the second year. He hopes to focus his efforts in the project towards hardware and enclosures, which will include PCB design and using SolidWorks to design enclosures, cases, and other devices to contain sensors. Last year Lewis joined after completing the Pentathlon and worked on a combination of hardware, enclosures and software. Since last year, Lewis has gained more experience in C++ programming, CAD and more. Lewis plans to use this knowledge to focus mainly on hardware, pcb and 3D design, assisting on programming and software when he is needed.

**Connor Bell**: (NOTE: Connor is no longer involved with the project) Connor is a Junior at Baxter Academy for Technology and Science. He is a new addition to the Wireless Sensors project. He has taken multiple classes based around electronics and computer programming, and is currently learning as much as he can to have enough knowledge to be successful on this projects. Connor has programmed multiple web-based and non-web based programs in various languages such as Python and Javascript, both of which are relevant to the progress of this project.

**Curtis**: 
Curtis is a Sophomore at Baxter Academy for Technology and Science. He is also a new addition to the Wireless Sensors project. He has taken multiple classes based around electronics and computer programming. Curtis plans to concentrate on programming so that he be a productive member of the group.

## Timeline
Currently unavailable

## Resources
* The school has tools like 3d printing software and equipment, soldering irons and other useful PCB design tools.
* Alan Lukas, Hal, Wells and Amory have backgrounds in programming, 3D design and PCB design and their knowledge will be very useful in the project.
* Currently an arduino prototype (Sensor prototype) and a Raspberry Pi 3 prototype (Hub prototype), are functioning from last year.    However, the Arduino did not have sufficient memory to hold a large number of different data acquisition formats.    The current plan is to use a RPi Zero instead for the Arduino for the sensor prototype.
* Purchase a  variety of Vernier sensors or borrow them as required from Baxter’s inventory.

## Constraints
* The team’s experience in PCB design, C++ programming, 3D design and other skill sets will influence how smoothly the project goes.
* There is not enough time this year to set-up a business and market the product to schools and other educational services.
* Accidents like damaging the circuits or short-circuiting them has been a problem in the past.
* There will be plenty of distractions and time constraints, but the team will use detailed schedules (Kanban and Gantter) to stay on track.

## Budget
Currently unavailable

## Deliverables
The final product will be a marketable platform to use in a classroom environment for experiments and laboratory tests in different subjects including physics, chemistry, and others. It will be made up of a Raspberry Pi Zeros (sensors) and a larger Raspberry Pi (hub). The hub will store and organize all data into a database and then send these data to a common cloud-based web server. Students can then connect to this web site to compare results of the data collected in the various class experiments. Note that data can also be collected from field experiments and then sent up to the cloud based server once the sensors connect to the RPi hub.
