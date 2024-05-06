#!/bin/bash

echo please close the main renode window after 20 seconds, repeat 4 times
# remove memset as they are huge and not useful
# remove time as it makes diffing harder
./renode cubeblack.discovery.resc 2>&1     | grep -v 'Entering function memset' | perl -pe 's/\d\d:\d\d:\d\d.\d\d\d\d //g' > boot.cubeblack.discovery.log

./renode cubeblack.discovery.ccm.resc 2>&1 | grep -v 'Entering function memset' | perl -pe 's/\d\d:\d\d:\d\d.\d\d\d\d //g' > boot.cubeblack.discovery.ccm.log

./renode cubeblack.stm32f429.resc 2>&1     | grep -v 'Entering function memset' | perl -pe 's/\d\d:\d\d:\d\d.\d\d\d\d //g' > boot.cubeblack.stm32f429.log

./renode cubeblack.stm32f429.ccm.resc 2>&1 | grep -v 'Entering function memset' | perl -pe 's/\d\d:\d\d:\d\d.\d\d\d\d //g' > boot.cubeblack.stm32f429.ccm.log

# this now has ccm, even tho its not in the name
./renode cubeblack.UART_test.resc 2>&1 | grep -v 'Entering function memset' | perl -pe 's/\d\d:\d\d:\d\d.\d\d\d\d //g' > boot.cubeblack.UART_test.ccm.log

