#!/bin/bash
# baker helper in the store!
# takes a cake tin size in cm, also the size of materials (in this case, cookies!)
# also the number of layers and how many cookies in 1 package
# will output you the number of cookie packages you need to buy and expected cost

echo -n "Length of your oven platter, cm "
read le
echo -n "Width of your oven platter, cm "
read wi
echo -n "Size of cookie, length, cm "
read cle
echo -n "Width of cookie, cm "
read cwi
echo -n "Number of layers: "
read la
echo -n "Cookies in 1 package: "
read pp
echo -n "Cost of 1 package in Euros: "
read co

pi=$(expr $le / $cle)
laa=$(expr $wi / $cwi)
yyk=$(expr $pi \* $laa)
k=$(expr $yyk \* $la)
pakke=$(expr \( $k + $pp - 1 \) / $pp)
#rounding up
cost=$(expr $pakke \* $co)
echo -n "This is how many packages you need: "
echo "$pakke packages"
echo -n "It will cost "
echo "$cost Euros"


