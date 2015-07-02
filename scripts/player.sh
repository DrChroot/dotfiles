#!/bin/bash
MPC=`mpc current`
notify-send "Currently Playing:" "$MPC"
