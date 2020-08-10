#import "skye.window" "sys/lib/gui/skye" "script";
#import "skye.fullscreen" "sys/lib/gui/skye" "script";

gin "gui.window.hide -name boot";

//skye.gui.window | c::app 100 0 0 360 240 1 true 50 100 200;
skye.gui.fullscreen | c::app 100 1 true 50 100 200;

gin "gui.frame.add -nc -wName patch -pName window.head -name head.title -x 0 -y 0 -width 80 -height 80 -alpha 100";
gin "gui.element.add -nc -wName patch -fName head.title -name title -type r.text -x1 0 -y1 0 -x2 100 -y2 0 -size 100 -r1 0 -g1 100 -data `Patch Notes - Beta v1.2` -align frame.center -scale frame";

gin "gui.frame.add -nc -wName patch -pName window.contents -name about.main -x 0 -y 0 -width 80 -height 80 -alpha 100";
gin "gui.element.add -nc -wName patch -fName about.main -name title -type r.text -x1 0 -y1 10 -x2 100 -y2 60 -size 75 -r1 0 -g1 -100 -data `Welcome to Skye OS, this's the Beta One/nupdate and alot has changed. All of the OS's/nmajor components were rebuilt from scratch or/ngreatly modified to increase the speed of the/nOS,make development easier or fix bugs and add/nfeatures.` -align frame.center -scale frame";

cast "shell.app";
