# rockpro64fanctrl
Fan control scripts for RockPro64

I've got a RockPro64 in a NAS enclosure with a bunch of 2.5" hard drives and the standard issue PWM controlled fan.
I was frustrated with the complexity of all the other solutions, when all I wanted was something that would turn the default fan speed down from 255 to 20 on boot. 
So I wrote it.

A future improvement might be to add some kind of thresholding for increasing the speed and make the service persistent.
But hopefully it won't be required for my home setup.

## NB the fan speed is always set to 20. If you have CPU/disk intensive tasks, you should probably increase it!

### How to use this:
1) git clone https://github.com/pingud98/rockpro64fanctrl.git
2) modify the files as follows:
    move the fancontrol.sh script to where you would like it to live (I keep mine in /home/jimmy.. probably not the best location, but it works)
    chmod +x fancontrol.sh
    edit the fanctrl.service file to modify the path statement to wherever you put the fancontrol.sh script (i.e. /home/$USER)
    move the fanctrl.service file to the /etc/systemd/system/ directory
3) sudo systemctl daemon-reload
4) sudo systemctl enable fanctrl.service
5) sudo systemctl start fanctrl.service
At this point the fan (if it's been running at full speed) should slow down to a barely audible level.
