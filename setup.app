cast "gui.console.awake";
cast "core.awake";

gin "gui.reset";
cast "shell.awake";

#import "skye.window" "sys/lib/gui/skye" "script";
#import "skye.fullscreen" "sys/lib/gui/skye" "script";


//skye.gui.window | c::app 100 0 0 360 240 1 true 50 100 200;
skye.gui.fullscreen | c::app 100 1 true 50 100 200;

gin "gui.frame.add -nc -wName setup -pName window.head -name head.title -x 0 -y 0 -width 80 -height 80 -alpha 100";
gin "gui.element.add -nc -wName setup -fName head.title -name title -type r.text -x1 0 -y1 0 -x2 100 -y2 0 -size 100 -r1 0 -g1 100 -data `Setup Skye OS` -align frame.center -scale frame";

gin "gui.frame.add -nc -wName setup -pName window.contents -name about.main -x 0 -y 0 -width 80 -height 80 -alpha 100";
gin "gui.element.add -nc -wName setup -fName about.main -name title -type r.text -x1 0 -y1 10 -x2 100 -y2 60 -size 75 -r1 0 -g1 -100 -data `Welcome to Skye OS, this's the Beta One update and alot has changed. All of the OS's major components were rebuilt from scratch or greatly modified to increase the speed of the OS, make development easier or fix bugs and add features.` -align frame.center -scale frame";

gin "gui.frame.add -nc -wName setup -pName about.main -name about.agree -x 25 -y -30 -width 40 -height 15 -alpha 100";
gin "gui.element.add -nc -wName setup -fName about.agree -name text -type r.text -x1 0 -y1 0 -x2 60 -y2 0 -size 75 -r1 0 -g1 100 -data `Launch Skye -nc` -align frame.center -scale frame";
gin "gui.element.add -nc -wName setup -fName about.agree -name box -type r.box -x1 0 -y1 0 -x2 100 -y2 100 -r1 50 -g1 100 -b1 255 -a1 `255` -align frame.center -scale frame";
gin "gui.element.add -nc -wName setup -fName about.agree -name hitbox -type v.hitbox -x1 0 -y1 0 -x2 100 -y2 100 -action1 `cast 'shell.home'` -align frame.center -scale frame";
gin "gui.element.add -wName setup -fName about.agree -name shadow -type r.shadow -size 3 -x1 0 -y1 0 -x2 100 -y2 100 -r1 1 -g1 1 -b1 1 -a1 `255` -align frame.center -scale frame";
