  GNU nano 4.8                                                            fancontrol.sh                                                                      
#!/bin/bash
echo "20" > /sys/class/hwmon/hwmon3/pwm1 
