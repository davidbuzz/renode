#   remember to build with --debug

# elf:file /home/buzz2/ardupilot/build/CubeBlack/
#file /home/buzz2/ardupilot/build/CubeBlack/bin/arducopter
file ./arducopter.cubeblack.debug.elf

target extended-remote localhost:3333

set architecture armv7

# monitor reset halt

