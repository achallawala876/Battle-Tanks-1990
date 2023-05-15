# Battle Tanks 1990

This project uses SystemVerilog and C to create a simplified version of a 2D tank shooter game primarily inspired off the classic Battle Tanks 1990 and loosely inspired off Wii Play Tanks. As an extension of the project, I might add analog rotations and richocheting bullets. This game can be run on an FPGA with USB Blaster as a System-on-Chip (SoC) based around NIOS II/e. The project features multiplayer capability with the incorporation of multiple keycodes and utilizes approximately 60% of on chip memory. This leaves room for further scalability and optimization with a relatively short compile time of 120 seconds.

The key components of the design are the System Bus, SDRAM, Video Display, and Keyboard, which have been implemented using hardware. The acquisition of inputs from the keyboard has been implemented using the NIOS II CPU software and is coded in C. The rendering of background and player graphics, processing multiple key inputs from the keyboard, tank parameters, and other high-performance features such as collision detection and shield detection have been implemented in the hardware directly using SystemVerilog. A custom IP core was created for the randomization of the screen location on which the shield power-up is generated, but this feature was rendered redundant by the creation of a linear shift feedback register (LFSR). Multiple finite state machines were implemented in hardware for handling game states and adding aesthetci animations such as moving tank treads and explosions. The design relies heavily on a variety of clocks and positive edge detectors for seamless gameplay.

## Folder & file descriptions:

The top-level module for this project is finalproject.sv 
The .sv files are where the hardware modules for most game features have been implemented.
Various folders hold rom and palette files that are instantiated within hardware modules for generating bitmaps and screen graphics.
The "software" folder holds the C code used by NIOS II and is directly accessed by Eclipse through Quartus.
Other files are generated by the system and must not be edited individually.

## Instructions for running the project:

Connect the FPGA to the device running the project, a VGA monitor, and a USB keyboard. The project was created on a DE-10 Lite FPGA board.
Open the Project in Quartus Prime using the finalproject.qpf file.
Compile the project in Quartus Prime and program the FPGA with the recently compiled project files. Run the C code through Ecipse in order to load NIOS II to the FPGA and establish a connection with the keyboard.
Follow instructions below on which keycodes can be used once the menu screen appears on the monitor.

## Instruction keys for playing:

O to conduct top level reset on tank healths and positions (should be done before starting game to fix any incorrectly latched values)
E to enter the game from the menu screen
M to return to menu screen
W, A, S, D for tank 1's movements
Spacebar to fire from tank 1
Arrow keys for tank 2's movements
Enter key  to fire from tank 2
Y to restart game from death screen
