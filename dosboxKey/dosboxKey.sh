#!/bin/bash

joystick=`find /dev/input/by-id/ -name "*event-joystick*"`
basicGPI="sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv \
    --evdev $joystick \
    --detach-kernel-driver \
    --silent \
    --force-feedback \
    --deadzone-trigger 15% \
    --deadzone 4000 \
    --mimic-xpad \
    --dpad-as-button \
    --trigger-as-button \
    --no-extra-events \
    --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RX=x2,ABS_RY=y2,ABS_Z=lt,ABS_RZ=rt \
    --evdev-keymap BTN_SOUTH=a,BTN_EAST=b,BTN_NORTH=x,BTN_WEST=y,BTN_TL=lb,BTN_TR=rb,BTN_THUMBL=tl,BTN_THUMBR=tr,BTN_MODE=guide,BTN_SELECT=back,BTN_START=start,BTN_TRIGGER_HAPPY3=du,BTN_TRIGGER_HAPPY4=dd,BTN_TRIGGER_HAPPY1=dl,BTN_TRIGGER_HAPPY2=dr \
    --evdev-absmap ABS_X=dpad_x,ABS_Y=dpad_y \
    --evdev-absmap ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y"

if [[ $1 =~ "레이맨1.sh" ]]; then
    keyMap="--ui-buttonmap x=KEY_LEFTALT,a=KEY_SPACE,b=KEY_LEFTCTRL,lb=BTN_LEFT,y+lb=BTN_LEFT,rb=BTN_RIGHT,y+rb=BTN_RIGHT \
    --ui-buttonmap back=KEY_ESC,start=KEY_ENTER,back+start=KEY_LEFTCTRL+KEY_F9 \
    --ui-buttonmap du=KEY_UP,y+du=REL_Y:-1:4,dd=KEY_DOWN,y+dd=REL_Y:1:4,dl=KEY_LEFT,y+dl=REL_X:-1:4,dr=KEY_RIGHT,y+dr=REL_X:1:4"
elif [[ $1 =~ "위험한 데이브.sh" ]]; then
    keyMap="--ui-buttonmap b=KEY_UP,a=KEY_LEFTCTRL,x=KEY_LEFTALT,lb=BTN_LEFT,y+lb=BTN_LEFT,rb=BTN_RIGHT,y+rb=BTN_RIGHT \
    --ui-buttonmap back=KEY_ESC,start=KEY_ENTER,back+start=KEY_LEFTCTRL+KEY_F9 \
    --ui-buttonmap du=KEY_UP,y+du=REL_Y:-1:4,dd=KEY_DOWN,y+dd=REL_Y:1:4,dl=KEY_LEFT,y+dl=REL_X:-1:4,dr=KEY_RIGHT,y+dr=REL_X:1:4"
else
    keyMap="--ui-buttonmap x=KEY_LEFTALT,a=KEY_SPACE,b=KEY_LEFTCTRL,lb=BTN_LEFT,y+lb=BTN_LEFT,rb=BTN_RIGHT,y+rb=BTN_RIGHT \
    --ui-buttonmap back=KEY_ESC,start=KEY_ENTER,back+start=KEY_LEFTCTRL+KEY_F9 \
    --ui-buttonmap du=KEY_UP,y+du=REL_Y:-1:4,dd=KEY_DOWN,y+dd=REL_Y:1:4,dl=KEY_LEFT,y+dl=REL_X:-1:4,dr=KEY_RIGHT,y+dr=REL_X:1:4"
fi

#elif ;then

joycommand="$basicGPI $keyMap &"
eval $joycommand