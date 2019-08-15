#!/bin/sh


if [ "$2" = "ppsspp" ]
then
    fbset -g 320 240 640 480 16
    sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv \
    --evdev /dev/input/by-id/usb-RetroFlag_GPi_Case_RetroFlag_01-event-joystick \
    --detach-kernel-driver \
    --silent \
    --force-feedback \
    --deadzone-trigger 15% \
    --deadzone 4000 \
    --mimic-xpad \
    --dpad-as-button \
    --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RX=x2,ABS_RY=y2,ABS_Z=lt,ABS_RZ=rt \
    --evdev-keymap BTN_SOUTH=a,BTN_EAST=b,BTN_NORTH=x,BTN_WEST=y,BTN_TL=lb,BTN_TR=rb,BTN_THUMBL=tl,BTN_THUMBR=tr,BTN_MODE=guide,BTN_SELECT=back,BTN_START=start,BTN_TRIGGER_HAPPY3=du,BTN_TRIGGER_HAPPY4=dd,BTN_TRIGGER_HAPPY1=dl,BTN_TRIGGER_HAPPY2=dr \
    --evdev-absmap ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y \
    --ui-buttonmap a=KEY_X,b=KEY_Z,x=KEY_S,y=KEY_A,lb=KEY_Q,rb=KEY_W,back+lb=KEY_E,back+rb=KEY_R,y+lb=BTN_LEFT,y+rb=BTN_RIGHT \
    --ui-buttonmap start=KEY_SPACE,back=KEY_ENTER,back+x=KEY_ESC,back+start=exec:/opt/retropie/configs/all/quit/quit.sh \
    --ui-buttonmap du=KEY_UP,y+du=REL_Y:-1:4,dd=KEY_DOWN,y+dd=REL_Y:1:4,dl=KEY_LEFT,y+dl=REL_X:-1:4,dr=KEY_RIGHT,y+dr=REL_X:1:4 \
&
fi


if  [ "$2" = "cannonball" ]
then
    sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv \
    --evdev /dev/input/by-id/usb-RetroFlag_GPi_Case_RetroFlag_01-event-joystick \
    --detach-kernel-driver \
    --silent \
    --force-feedback \
    --deadzone-trigger 15% \
    --deadzone 4000 \
    --mimic-xpad \
    --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RX=x2,ABS_RY=y2,ABS_Z=lt,ABS_RZ=rt \
    --evdev-keymap BTN_SOUTH=a,BTN_EAST=b,BTN_NORTH=x,BTN_WEST=y,BTN_TL=lb,BTN_TR=rb,BTN_THUMBL=tl,BTN_THUMBR=tr,BTN_MODE=guide,BTN_SELECT=back,BTN_START=start,BTN_TRIGGER_HAPPY3=du,BTN_TRIGGER_HAPPY4=dd,BTN_TRIGGER_HAPPY1=dl,BTN_TRIGGER_HAPPY2=dr \
    --evdev-absmap ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y \
    --ui-buttonmap x=KEY_V,a=KEY_B,b=KEY_A,Y=KEY_G \
    --ui-buttonmap start=KEY_ENTER,back=KEY_1,back+start=KEY_ESC \
    --ui-buttonmap du=KEY_UP,dd=KEY_DOWN,dl=KEY_LEFT,dr=KEY_RIGHT \
&
fi

if  [ "$2" = "solarus" ]
then
    sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv \
    --evdev /dev/input/by-id/usb-RetroFlag_GPi_Case_RetroFlag_01-event-joystick \
    --detach-kernel-driver \
    --silent \
    --force-feedback \
    --deadzone-trigger 15% \
    --deadzone 4000 \
    --mimic-xpad \
    --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RX=x2,ABS_RY=y2,ABS_Z=lt,ABS_RZ=rt \
    --evdev-keymap BTN_SOUTH=a,BTN_EAST=b,BTN_NORTH=x,BTN_WEST=y,BTN_TL=lb,BTN_TR=rb,BTN_THUMBL=tl,BTN_THUMBR=tr,BTN_MODE=guide,BTN_SELECT=back,BTN_START=start,BTN_TRIGGER_HAPPY3=du,BTN_TRIGGER_HAPPY4=dd,BTN_TRIGGER_HAPPY1=dl,BTN_TRIGGER_HAPPY2=dr \
    --evdev-absmap ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y \
    --ui-buttonmap a=KEY_C,b=KEY_SPACE,x=KEY_V,y=KEY_X,lb=void,rb=void \
    --ui-buttonmap start=KEY_D,back=KEY_ESC,back+start=exec:/opt/retropie/supplementary/xboxdrv/bin/quit.sh  \
    --ui-buttonmap du=KEY_UP,dd=KEY_DOWN,dl=KEY_LEFT,dr=KEY_RIGHT \
&
fi


#Tested with Commander Keen 1 to 6, select+start=quit.  Hold Y for mouse movement.  LB/RB=mouse click.
if [ "$2" = "lr-np2kai" ]
then
    sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv \
    --evdev /dev/input/by-id/usb-RetroFlag_GPi_Case_RetroFlag_01-event-joystick \
    --detach-kernel-driver \
    --silent \
    --force-feedback \
    --deadzone-trigger 15% \
    --deadzone 4000 \
    --mimic-xpad \
    --dpad-as-button \
    --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RX=x2,ABS_RY=y2,ABS_Z=lt,ABS_RZ=rt \
    --evdev-keymap BTN_SOUTH=a,BTN_EAST=b,BTN_NORTH=x,BTN_WEST=y,BTN_TL=lb,BTN_TR=rb,BTN_THUMBL=tl,BTN_THUMBR=tr,BTN_MODE=guide,BTN_SELECT=back,BTN_START=start,BTN_TRIGGER_HAPPY3=du,BTN_TRIGGER_HAPPY4=dd,BTN_TRIGGER_HAPPY1=dl,BTN_TRIGGER_HAPPY2=dr \
    --evdev-absmap ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y \
    --ui-buttonmap x=KEY_2,y=KEY_1,a=KEY_SPACE,b=KEY_LEFTCTRL,lb=BTN_LEFT,y+lb=BTN_LEFT,rb=BTN_RIGHT,y+rb=BTN_RIGHT \
    --ui-buttonmap back=KEY_ESC,start=KEY_ENTER,back+start=KEY_LEFTCTRL+KEY_F9 \
    --ui-buttonmap du=KEY_UP,y+du=REL_Y:-1:4,dd=KEY_DOWN,y+dd=REL_Y:1:4,dl=KEY_LEFT,y+dl=REL_X:-1:4,dr=KEY_RIGHT,y+dr=REL_X:1:4 \
&
fi



#quit (select+start)
if  [ "$2" = "sorr" ]
then
    sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv \
    --evdev /dev/input/by-id/usb-RetroFlag_GPi_Case_RetroFlag_01-event-joystick \
    --detach-kernel-driver \
    --silent \
    --force-feedback \
    --deadzone-trigger 15% \
    --deadzone 4000 \
    --mimic-xpad \
    --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RX=x2,ABS_RY=y2,ABS_Z=lt,ABS_RZ=rt \
    --evdev-keymap BTN_SOUTH=a,BTN_EAST=b,BTN_NORTH=x,BTN_WEST=y,BTN_TL=lb,BTN_TR=rb,BTN_THUMBL=tl,BTN_THUMBR=tr,BTN_MODE=guide,BTN_SELECT=back,BTN_START=start,BTN_TRIGGER_HAPPY3=du,BTN_TRIGGER_HAPPY4=dd,BTN_TRIGGER_HAPPY1=dl,BTN_TRIGGER_HAPPY2=dr \
    --evdev-absmap ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y \
    --ui-buttonmap a=KEY_V,b=KEY_C,a+b=KEY_X,x=KEY_D,y=KEY_S,lb=KEY_A,rb=KEY_B \
    --ui-buttonmap start=KEY_ENTER,back=KEY_ESC \
    --ui-buttonmap du=KEY_UP,dd=KEY_DOWN,dl=KEY_LEFT,dr=KEY_RIGHT \
&
fi

#quit (select+start)
if  [ "$2" = "snes9x_ori" ]
then
    sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv \
    --evdev /dev/input/by-id/usb-RetroFlag_GPi_Case_RetroFlag_01-event-joystick \
    --detach-kernel-driver \
    --silent \
    --force-feedback \
    --deadzone-trigger 15% \
    --deadzone 4000 \
    --mimic-xpad \
    --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RX=x2,ABS_RY=y2,ABS_Z=lt,ABS_RZ=rt \
    --evdev-keymap BTN_SOUTH=a,BTN_EAST=b,BTN_NORTH=x,BTN_WEST=y,BTN_TL=lb,BTN_TR=rb,BTN_THUMBL=tl,BTN_THUMBR=tr,BTN_MODE=guide,BTN_SELECT=back,BTN_START=start,BTN_TRIGGER_HAPPY3=du,BTN_TRIGGER_HAPPY4=dd,BTN_TRIGGER_HAPPY1=dl,BTN_TRIGGER_HAPPY2=dr \
    --evdev-absmap ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y \
    --ui-buttonmap x=JS_2,a=JS_0,b=JS_1,lb=JS_4,y=JS_3,rb=JS_5 \
    --ui-buttonmap start=JS_6,back=JS_7,back+start=KEY_ESC \
&
fi

#quit (select+start)
if  [ "$2" = "snes9x" ]
then
    sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv \
    --evdev /dev/input/by-id/usb-RetroFlag_GPi_Case_RetroFlag_01-event-joystick \
    --detach-kernel-driver \
    --silent \
    --force-feedback \
    --deadzone-trigger 15% \
    --deadzone 4000 \
    --mimic-xpad \
    --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RX=x2,ABS_RY=y2,ABS_Z=lt,ABS_RZ=rt \
    --evdev-keymap BTN_SOUTH=a,BTN_EAST=b,BTN_NORTH=x,BTN_WEST=y,BTN_TL=lb,BTN_TR=rb,BTN_THUMBL=tl,BTN_THUMBR=tr,BTN_MODE=guide,BTN_SELECT=back,BTN_START=start,BTN_TRIGGER_HAPPY3=du,BTN_TRIGGER_HAPPY4=dd,BTN_TRIGGER_HAPPY1=dl,BTN_TRIGGER_HAPPY2=dr \
    --evdev-absmap ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y \
    --ui-buttonmap x=KEY_S,a=KEY_D,b=KEY_C,lb=KEY_A,y=KEY_X,rb=KEY_F \
    --ui-buttonmap start=KEY_ENTER,back=KEY_TAB,back+start=KEY_ESC \
    --ui-buttonmap du=KEY_UP,dd=KEY_DOWN,dl=KEY_LEFT,dr=KEY_RIGHT \
&
fi

#select+start=quit, LB and RB has secondary function with y button hold.
if [ "$2" = "mame4all" ]
then
    sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv \
    --evdev /dev/input/by-id/usb-RetroFlag_GPi_Case_RetroFlag_01-event-joystick \
    --detach-kernel-driver \
    --silent \
    --force-feedback \
    --deadzone-trigger 15% \
    --deadzone 4000 \
    --mimic-xpad \
    --dpad-as-button \
    --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RX=x2,ABS_RY=y2,ABS_Z=lt,ABS_RZ=rt \
    --evdev-keymap BTN_SOUTH=a,BTN_EAST=b,BTN_NORTH=x,BTN_WEST=y,BTN_TL=lb,BTN_TR=rb,BTN_THUMBL=tl,BTN_THUMBR=tr,BTN_MODE=guide,BTN_SELECT=back,BTN_START=start,BTN_TRIGGER_HAPPY3=du,BTN_TRIGGER_HAPPY4=dd,BTN_TRIGGER_HAPPY1=dl,BTN_TRIGGER_HAPPY2=dr \
    --evdev-absmap ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y \
    --ui-buttonmap start=KEY_1,back=KEY_5,back+start=KEY_ESC \
    --ui-buttonmap a=KEY_LEFTCTRL,b=KEY_LEFTALT,x=KEY_SPACE,y=KEY_LEFTSHIFT,lb=KEY_Z,rb=KEY_X \
    --ui-buttonmap du=KEY_UP,dd=KEY_DOWN,dl=KEY_LEFT,dr=KEY_RIGHT,y+lb=KEY_TAB,y+rb=KEY_ENTER \
&
fi


#start+select=quit, A and B are turbo if held.  
if [ "$2" = "pifba" ]
then
    sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv \
    --evdev /dev/input/by-id/usb-RetroFlag_GPi_Case_RetroFlag_01-event-joystick \
    --detach-kernel-driver \
    --silent \
    --force-feedback \
    --deadzone-trigger 15% \
    --deadzone 4000 \
    --mimic-xpad \
    --dpad-as-button \
    --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RX=x2,ABS_RY=y2,ABS_Z=lt,ABS_RZ=rt \
    --evdev-keymap BTN_SOUTH=a,BTN_EAST=b,BTN_NORTH=x,BTN_WEST=y,BTN_TL=lb,BTN_TR=rb,BTN_THUMBL=tl,BTN_THUMBR=tr,BTN_MODE=guide,BTN_SELECT=back,BTN_START=start,BTN_TRIGGER_HAPPY3=du,BTN_TRIGGER_HAPPY4=dd,BTN_TRIGGER_HAPPY1=dl,BTN_TRIGGER_HAPPY2=dr \
    --evdev-absmap ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y \
    --ui-buttonmap b=KEY_LEFTCTRL,y=KEY_SPACE,a=KEY_LEFTALT,x=KEY_LEFTSHIFT,lb=KEY_Z,rb=KEY_X \
    --ui-buttonmap start=KEY_ENTER,back=KEY_TAB,back+start=KEY_ESC \
    --ui-buttonmap du=KEY_UP,dd=KEY_DOWN,dl=KEY_LEFT,dr=KEY_RIGHT \
&
fi


#Tested with Commander Keen 1 to 6, select+start=quit.  Hold Y for mouse movement.  LB/RB=mouse click.
if [ "$2" = "dosbox22" ]
then
    sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv \
    --evdev /dev/input/by-id/usb-RetroFlag_GPi_Case_RetroFlag_01-event-joystick \
    --detach-kernel-driver \
    --silent \
    --force-feedback \
    --deadzone-trigger 15% \
    --deadzone 4000 \
    --mimic-xpad \
    --dpad-as-button \
    --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RX=x2,ABS_RY=y2,ABS_Z=lt,ABS_RZ=rt \
    --evdev-keymap BTN_SOUTH=a,BTN_EAST=b,BTN_NORTH=x,BTN_WEST=y,BTN_TL=lb,BTN_TR=rb,BTN_THUMBL=tl,BTN_THUMBR=tr,BTN_MODE=guide,BTN_SELECT=back,BTN_START=start,BTN_TRIGGER_HAPPY3=du,BTN_TRIGGER_HAPPY4=dd,BTN_TRIGGER_HAPPY1=dl,BTN_TRIGGER_HAPPY2=dr \
    --evdev-absmap ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y \
    --ui-buttonmap x=KEY_LEFTALT,a=KEY_SPACE,b=KEY_LEFTCTRL,lb=BTN_LEFT,y+lb=BTN_LEFT,rb=BTN_RIGHT,y+rb=BTN_RIGHT \
    --ui-buttonmap back=KEY_ESC,start=KEY_ENTER,back+start=KEY_LEFTCTRL+KEY_F9 \
    --ui-buttonmap du=KEY_UP,y+du=REL_Y:-1:4,dd=KEY_DOWN,y+dd=REL_Y:1:4,dl=KEY_LEFT,y+dl=REL_X:-1:4,dr=KEY_RIGHT,y+dr=REL_X:1:4 \
&
fi

if [ "$2" = "dosbox" ]
then
    sudo /opt/retropie/configs/all/dosboxKey/dosboxKey.sh "$3"
fi

#hold Y to change between walking/looking/mouse. select+start=quit  LB=left click(+Y=scroll) RB=Right click(+Y=scroll)
if [ "$2" = "minecraft" ]
then
    sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv \
    --evdev /dev/input/by-id/usb-RetroFlag_GPi_Case_RetroFlag_01-event-joystick \
    --detach-kernel-driver \
    --silent \
    --force-feedback \
    --deadzone-trigger 15% \
    --deadzone 4000 \
    --mimic-xpad \
    --dpad-as-button \
    --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RX=x2,ABS_RY=y2,ABS_Z=lt,ABS_RZ=rt \
    --evdev-keymap BTN_SOUTH=a,BTN_EAST=b,BTN_NORTH=x,BTN_WEST=y,BTN_TL=lb,BTN_TR=rb,BTN_THUMBL=tl,BTN_THUMBR=tr,BTN_MODE=guide,BTN_SELECT=back,BTN_START=start,BTN_TRIGGER_HAPPY3=du,BTN_TRIGGER_HAPPY4=dd,BTN_TRIGGER_HAPPY1=dl,BTN_TRIGGER_HAPPY2=dr \
    --evdev-absmap ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y \
    --ui-buttonmap x=KEY_X:KEY_E:1000,a=KEY_LEFTSHIFT,b=KEY_SPACE,lb=BTN_LEFT,y+lb=rel:REL_WHEEL:1:250,rb=BTN_RIGHT,y+rb=rel:REL_WHEEL:-1:250 \
    --ui-buttonmap back=KEY_ESC,start=KEY_ENTER,back+start=exec:/opt/retropie/supplementary/xboxdrv/bin/quit.sh \
    --ui-buttonmap du=KEY_W,y+du=rel:REL_Y:-2:5,dd=KEY_S,y+dd=rel:REL_Y:2:5,dl=KEY_A,y+dl=rel:REL_X:-2:5,dr=KEY_D,y+dr=rel:REL_X:2:5 \
&
fi


#Select = coin, y=unused.
if [ "$2" = "daphne" ]
then
    sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv \
    --evdev /dev/input/by-id/usb-RetroFlag_GPi_Case_RetroFlag_01-event-joystick \
    --detach-kernel-driver \
    --silent \
    --force-feedback \
    --deadzone-trigger 15% \
    --deadzone 4000 \
    --mimic-xpad \
    --dpad-as-button \
    --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RX=x2,ABS_RY=y2,ABS_Z=lt,ABS_RZ=rt \
    --evdev-keymap BTN_SOUTH=a,BTN_EAST=b,BTN_NORTH=x,BTN_WEST=y,BTN_TL=lb,BTN_TR=rb,BTN_THUMBL=tl,BTN_THUMBR=tr,BTN_MODE=guide,BTN_SELECT=back,BTN_START=start,BTN_TRIGGER_HAPPY3=du,BTN_TRIGGER_HAPPY4=dd,BTN_TRIGGER_HAPPY1=dl,BTN_TRIGGER_HAPPY2=dr \
    --evdev-absmap ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y \
    --ui-buttonmap x=KEY_LEFTSHIFT,a=KEY_LEFTCTRL,b=KEY_LEFTALT \
    --ui-buttonmap start=KEY_1,back=KEY_5,back+start=KEY_ESC \
    --ui-buttonmap du=KEY_UP,dd=KEY_DOWN,dl=KEY_LEFT,dr=KEY_RIGHT \
&
fi


#Menu (select+X), quit (select+start)
if  [ "$2" = "gpsp" ]
then
    sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv \
    --evdev /dev/input/by-id/usb-RetroFlag_GPi_Case_RetroFlag_01-event-joystick \
    --detach-kernel-driver \
    --silent \
    --force-feedback \
    --deadzone-trigger 15% \
    --deadzone 4000 \
    --mimic-xpad \
    --dpad-as-button \
    --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RX=x2,ABS_RY=y2,ABS_Z=lt,ABS_RZ=rt \
    --evdev-keymap BTN_SOUTH=a,BTN_EAST=b,BTN_NORTH=x,BTN_WEST=y,BTN_TL=lb,BTN_TR=rb,BTN_THUMBL=tl,BTN_THUMBR=tr,BTN_MODE=guide,BTN_SELECT=back,BTN_START=start,BTN_TRIGGER_HAPPY3=du,BTN_TRIGGER_HAPPY4=dd,BTN_TRIGGER_HAPPY1=dl,BTN_TRIGGER_HAPPY2=dr \
    --evdev-absmap ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y \
    --ui-buttonmap x=KEY_S,a=KEY_Z,b=KEY_X,lb=KEY_A,Y=KEY_A,rb=KEY_S \
    --ui-buttonmap start=KEY_ENTER,back=KEY_BACKSPACE,back+x=KEY_F10,back+start=KEY_ESC \
    --ui-buttonmap du=KEY_UP,dd=KEY_DOWN,dl=KEY_LEFT,dr=KEY_RIGHT \
&
fi


#Save states (select+RB) and Load states (select+LB).  Select+Start is Quit.  Select+X is Menu. Y+L1 = L2.(sameforR2)
if [ "$2" = "pcsx-rearmed" ]
then
    fbset -g 320 240 640 480 16
    sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv \
    --evdev /dev/input/by-id/usb-RetroFlag_GPi_Case_RetroFlag_01-event-joystick \
    --detach-kernel-driver \
    --silent \
    --force-feedback \
    --deadzone-trigger 15% \
    --deadzone 4000 \
    --mimic-xpad \
    --dpad-as-button \
    --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RX=x2,ABS_RY=y2,ABS_Z=lt,ABS_RZ=rt \
    --evdev-keymap BTN_SOUTH=a,BTN_EAST=b,BTN_NORTH=x,BTN_WEST=y,BTN_TL=lb,BTN_TR=rb,BTN_THUMBL=tl,BTN_THUMBR=tr,BTN_MODE=guide,BTN_SELECT=back,BTN_START=start,BTN_TRIGGER_HAPPY3=du,BTN_TRIGGER_HAPPY4=dd,BTN_TRIGGER_HAPPY1=dl,BTN_TRIGGER_HAPPY2=dr \
    --evdev-absmap ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y \
    --ui-buttonmap x=KEY_D,a=KEY_X,b=KEY_Z+KEY_ENTER,Y=KEY_S,lb=KEY_W,y+lb=KEY_E,rb=KEY_R,y+rb=KEY_T \
    --ui-buttonmap start=KEY_V,back=KEY_C,back+x=KEY_ESC,back+start=exec:/opt/retropie/configs/all/quit/quit.sh,back+lb=KEY_F2,back+rb=KEY_F1 \
    --ui-buttonmap du=KEY_UP,dd=KEY_DOWN,dl=KEY_LEFT,dr=KEY_RIGHT \
&
fi

if [ "$2" = "easyrpgplayer" ]
then
    sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv \
    --evdev /dev/input/by-id/usb-RetroFlag_GPi_Case_RetroFlag_01-event-joystick \
    --detach-kernel-driver \
    --silent \
    --force-feedback \
    --deadzone-trigger 15% \
    --deadzone 4000 \
    --mimic-xpad \
    --dpad-as-button \
    --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RX=x2,ABS_RY=y2,ABS_Z=lt,ABS_RZ=rt \
    --evdev-keymap BTN_SOUTH=a,BTN_EAST=b,BTN_NORTH=x,BTN_WEST=y,BTN_TL=lb,BTN_TR=rb,BTN_THUMBL=tl,BTN_THUMBR=tr,BTN_MODE=guide,BTN_SELECT=back,BTN_START=start,BTN_TRIGGER_HAPPY3=du,BTN_TRIGGER_HAPPY4=dd,BTN_TRIGGER_HAPPY1=dl,BTN_TRIGGER_HAPPY2=dr \
    --evdev-absmap ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y \
    --ui-buttonmap x=KEY_0,y=KEY_1,a=KEY_Z,b=KEY_X,rb=KEY_LEFTSHIFT \
    --ui-buttonmap back=KEY_ESC,start=KEY_LEFTSHIFT \
    --ui-buttonmap du=KEY_UP,dd=KEY_DOWN,dl=KEY_LEFT,dr=KEY_RIGHT \
&
fi

#Duke Nukem
if [ "$2" = "eduke32" ]
then
    sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv \
    --evdev /dev/input/by-id/usb-RetroFlag_GPi_Case_RetroFlag_01-event-joystick \
    --detach-kernel-driver \
    --silent \
    --force-feedback \
    --deadzone-trigger 15% \
    --deadzone 4000 \
    --mimic-xpad \
    --dpad-as-button \
    --no-extra-events \
    --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RX=x2,ABS_RY=y2,ABS_Z=lt,ABS_RZ=rt \
    --evdev-keymap BTN_SOUTH=a,BTN_EAST=b,BTN_NORTH=x,BTN_WEST=y,BTN_TL=lb,BTN_TR=rb,BTN_THUMBL=tl,BTN_THUMBR=tr,BTN_MODE=guide,BTN_SELECT=back,BTN_START=start,BTN_TRIGGER_HAPPY3=du,BTN_TRIGGER_HAPPY4=dd,BTN_TRIGGER_HAPPY1=dl,BTN_TRIGGER_HAPPY2=dr \
    --evdev-absmap ABS_X=dpad_x,ABS_Y=dpad_y \
    --evdev-absmap ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y \
    --ui-buttonmap x=KEY_RIGHTCTRL,a=KEY_E,b=KEY_SPACE,y=KEY_LEFTSHIFT,lb=KEY_A,rb=KEY_D,a+lb=KEY_SEMICOLON,a+rb=KEY_APOSTROPHE,lb+rb=KEY_LEFTCTRL,rb+lb=KEY_LEFTCTRL \
    --ui-buttonmap start=KEY_ENTER+KEY_M,back=KEY_ESC,back+start=KEY_F10 \
    --ui-buttonmap du=KEY_UP+KEY_W,du+a=rel:REL_Y:-5:5,a+du=rel:REL_Y:-5:5,dd=KEY_DOWN+KEY_S,dd+a=rel:REL_Y:5:5,a+dd=rel:REL_Y:5:5,dl=KEY_LEFT,dr=KEY_RIGHT \
    --ui-buttonmap start+y=KEY_J,start+b=KEY_N,start+x=KEY_H,start+a=KEY_TAB \
&
fi

#select+start=quit, LB and RB has secondary function with y button hold.
if [ "$2" = "advmame-0.94" ]
then
    sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv \
    --evdev /dev/input/by-id/usb-RetroFlag_GPi_Case_RetroFlag_01-event-joystick \
    --detach-kernel-driver \
    --silent \
    --force-feedback \
    --deadzone-trigger 15% \
    --deadzone 4000 \
    --mimic-xpad \
    --dpad-as-button \
    --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RX=x2,ABS_RY=y2,ABS_Z=lt,ABS_RZ=rt \
    --evdev-keymap BTN_SOUTH=a,BTN_EAST=b,BTN_NORTH=x,BTN_WEST=y,BTN_TL=lb,BTN_TR=rb,BTN_THUMBL=tl,BTN_THUMBR=tr,BTN_MODE=guide,BTN_SELECT=back,BTN_START=start,BTN_TRIGGER_HAPPY3=du,BTN_TRIGGER_HAPPY4=dd,BTN_TRIGGER_HAPPY1=dl,BTN_TRIGGER_HAPPY2=dr \
    --evdev-absmap ABS_X=dpad_x,ABS_Y=dpad_y \
    --evdev-absmap ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y \
    --ui-buttonmap start=KEY_1+KEY_ENTER,back=KEY_5,back+start=KEY_ESC \
    --ui-buttonmap b=KEY_LEFTCTRL,a=KEY_LEFTALT,x=KEY_SPACE,y=KEY_LEFTSHIFT,lb=KEY_Z,rb=KEY_X \
    --ui-buttonmap du=KEY_UP,dd=KEY_DOWN,dl=KEY_LEFT,dr=KEY_RIGHT,y+lb=KEY_TAB,y+rb=KEY_ENTER \
&
fi

#Experimental Openbor
if [ "$2" = "openbor" ]
then
    sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv \
    --evdev /dev/input/by-id/usb-RetroFlag_GPi_Case_RetroFlag_01-event-joystick \
    --detach-kernel-driver \
    --silent \
    --force-feedback \
    --deadzone-trigger 15% \
    --deadzone 4000 \
    --mimic-xpad \
    --dpad-as-button \
    --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RX=x2,ABS_RY=y2,ABS_Z=lt,ABS_RZ=rt \
    --evdev-keymap BTN_SOUTH=a,BTN_EAST=b,BTN_NORTH=x,BTN_WEST=y,BTN_TL=lb,BTN_TR=rb,BTN_THUMBL=tl,BTN_THUMBR=tr,BTN_MODE=guide,BTN_SELECT=back,BTN_START=start,BTN_TRIGGER_HAPPY3=du,BTN_TRIGGER_HAPPY4=dd,BTN_TRIGGER_HAPPY1=dl,BTN_TRIGGER_HAPPY2=dr \
    --evdev-absmap ABS_X=dpad_x,ABS_Y=dpad_y \
    --evdev-absmap ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y \
    --ui-buttonmap x=void,a=KEY_D,b=KEY_A,Y=KEY_S,lb=KEY_L,rb=KEY_R \
    --ui-buttonmap start=KEY_ENTER,back=KEY_BACKSPACE,back+start=KEY_F10 \
    --ui-buttonmap du=KEY_UP,dd=KEY_DOWN,dl=KEY_LEFT,dr=KEY_RIGHT \
&
fi

if [ "$2" = "openbor-6xxx" ]
then
    sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv \
    --evdev /dev/input/by-id/usb-RetroFlag_GPi_Case_RetroFlag_01-event-joystick \
    --detach-kernel-driver \
    --silent \
    --force-feedback \
    --deadzone-trigger 15% \
    --deadzone 4000 \
    --mimic-xpad \
    --dpad-as-button \
    --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RX=x2,ABS_RY=y2,ABS_Z=lt,ABS_RZ=rt \
    --evdev-keymap BTN_SOUTH=a,BTN_EAST=b,BTN_NORTH=x,BTN_WEST=y,BTN_TL=lb,BTN_TR=rb,BTN_THUMBL=tl,BTN_THUMBR=tr,BTN_MODE=guide,BTN_SELECT=back,BTN_START=start,BTN_TRIGGER_HAPPY3=du,BTN_TRIGGER_HAPPY4=dd,BTN_TRIGGER_HAPPY1=dl,BTN_TRIGGER_HAPPY2=dr \
    --evdev-absmap ABS_X=dpad_x,ABS_Y=dpad_y \
    --evdev-absmap ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y \
    --ui-buttonmap x=void,a=KEY_D,b=KEY_A,Y=KEY_S,lb=KEY_L,rb=KEY_R \
    --ui-buttonmap start=KEY_ENTER,back=KEY_BACKSPACE,back+start=KEY_F10 \
    --ui-buttonmap du=KEY_UP,dd=KEY_DOWN,dl=KEY_LEFT,dr=KEY_RIGHT \
&
fi

if  [ "$2" = "zeldansq" ]
then
    sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv \
    --evdev /dev/input/by-id/usb-RetroFlag_GPi_Case_RetroFlag_01-event-joystick \
    --detach-kernel-driver \
    --silent \
    --force-feedback \
    --deadzone-trigger 15% \
    --deadzone 4000 \
    --mimic-xpad \
    --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RX=x2,ABS_RY=y2,ABS_Z=lt,ABS_RZ=rt \
    --evdev-keymap BTN_SOUTH=a,BTN_EAST=b,BTN_NORTH=x,BTN_WEST=y,BTN_TL=lb,BTN_TR=rb,BTN_THUMBL=tl,BTN_THUMBR=tr,BTN_MODE=guide,BTN_SELECT=back,BTN_START=start,BTN_TRIGGER_HAPPY3=du,BTN_TRIGGER_HAPPY4=dd,BTN_TRIGGER_HAPPY1=dl,BTN_TRIGGER_HAPPY2=dr \
    --evdev-absmap ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y \
    --ui-buttonmap a=KEY_C,b=KEY_SPACE,x=KEY_V,y=KEY_X,lb=void,rb=void \
    --ui-buttonmap start=KEY_D,back=KEY_ESC,back+start=exec:/opt/retropie/supplementary/xboxdrv/bin/quit.sh  \
    --ui-buttonmap du=KEY_UP,dd=KEY_DOWN,dl=KEY_LEFT,dr=KEY_RIGHT \
&
fi

if  [ "$2" = "zeldapicross" ]
then
    sudo /opt/retropie/supplementary/xboxdrv/bin/xboxdrv \
    --evdev /dev/input/by-id/usb-RetroFlag_GPi_Case_RetroFlag_01-event-joystick \
    --detach-kernel-driver \
    --silent \
    --force-feedback \
    --deadzone-trigger 15% \
    --deadzone 4000 \
    --mimic-xpad \
    --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RX=x2,ABS_RY=y2,ABS_Z=lt,ABS_RZ=rt \
    --evdev-keymap BTN_SOUTH=a,BTN_EAST=b,BTN_NORTH=x,BTN_WEST=y,BTN_TL=lb,BTN_TR=rb,BTN_THUMBL=tl,BTN_THUMBR=tr,BTN_MODE=guide,BTN_SELECT=back,BTN_START=start,BTN_TRIGGER_HAPPY3=du,BTN_TRIGGER_HAPPY4=dd,BTN_TRIGGER_HAPPY1=dl,BTN_TRIGGER_HAPPY2=dr \
    --evdev-absmap ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y \
    --ui-buttonmap a=KEY_C,b=KEY_SPACE,x=KEY_V,y=KEY_X,lb=void,rb=void \
    --ui-buttonmap start=KEY_D,back=KEY_ESC,back+start=exec:/opt/retropie/supplementary/xboxdrv/bin/quit.sh  \
    --ui-buttonmap du=KEY_UP,dd=KEY_DOWN,dl=KEY_LEFT,dr=KEY_RIGHT \
&
fi