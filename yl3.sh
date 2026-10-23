#!/bin/bash
# calculator for bus trips. using the same expr as last task its easier

echo -n "Number of travellers: "
read tr
echo -n "Seats in every bus (don't count the driver): "
read se

full=$(expr $tr / $se)
# got a bit confused here now, managed to find out expr does not support float so it will work
off=$(expr $tr % $se)
# internet tells me this gives the remainder

echo "Bus(es) full: $full"
echo "Amount of missing people: $off"
