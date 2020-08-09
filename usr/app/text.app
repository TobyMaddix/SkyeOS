#import "skye.window" "sys/lib/gui/skye" "script";
#import "skye.fullscreen" "sys/lib/gui/skye" "script";


//skye.gui.window | c::app 100 0 0 360 240 1 true 50 100 200;
skye.gui.fullscreen | c::app 100 1 true 255 255 255;

gin "gui.frame.add -nc -wName text -pName window.head -name head.title -x 0 -y 0 -width 80 -height 80 -alpha 100";
gin "gui.element.add -nc -wName text -fName head.title -name title -type r.text -x1 0 -y1 0 -x2 100 -y2 0 -size 100 -r1 0 -g1 -100 -data `Text Edit` -align frame.center -scale frame";

gin "gui.frame.add -nc -wName text -pName window.contents -name text.main -x 0 -y 0 -width 80 -height 80 -alpha 100";
gin "gui.element.add -nc -wName text -fName text.main -name text -type r.text -x1 0 -y1 0 -x2 100 -y2 100 -size 75 -r1 0 -g1 -100 -data `Sample Text` -align frame.center -scale frame";

cast "shell.app";
