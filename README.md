# MC1_finito

Refer to http://www.udoo.org/docs/Advanced_Setup/UDOO_Usb_Debug

-first force EDIF-
setenv hdmi_patch udoo_hdmi_force_hpdetect

-now set resolution for 7" LCD to 640x480
setenv mmcargs setenv bootargs console=${console},${baudrate} root=${mmcroot} ${hdmi_patch} fbmem=24M video=mxcfb0:dev=hdmi,640x480@60,bpp=32

or
setenv mmcargs setenv bootargs console=${console},${baudrate} root=${mmcroot} ${hdmi_patch} fbmem=24M video=mxcfb0:dev=hdmi,800x600M@60,bpp=32

or
setenv mmcargs setenv bootargs console=${console},${baudrate} root=${mmcroot} ${hdmi_patch} fbmem=24M video=mxcfb0:dev=hdmi,1920x1080M@60,bpp=32

in case of errors repeat the entire procedure.
 
 
To remove the sleep:
as root 
cd /root/.config/autostart/
- create a file named display-autostart.desktop
- open the file and write
[Desktop Entry]
Type=Application
Name=display no suspend
Comment=disable suspend
Exec=xset  s off -dpms
#OnlyShowIn=LXDE


To hide mouse
install unclutter
as root 
cd /root/.config/autostart/
- create a file named hide_mouse-autostart.desktop
- open the file and write
[Desktop Entry]
Type=Application
Name=hide mouse
Comment=hide mouse
Exec=unclutter
#OnlyShowIn=LXDE
