#import "package" "sys/lib/core";
#import "skye.window" "sys/lib/gui/skye";

skye.gui.window | c::app 0 0 360 240 100 1 true 1 1 1;

gin "gui.frame.add -nc -wName launcher -pName window.head -name head.title -x 0 -y 0 -width 95 -height 80 -alpha 100";
gin "gui.element.add -nc -wName launcher -fName head.title -name title -type r.text -x1 0 -y1 0 -x2 100 -y2 0 -size 75 -r1 0 -g1 100 -data `App Launcher` -align frame.center -scale frame";

gin "gui.frame.add -nc -wName launcher -pName window.contents -name manual -x 0 -y 10 -width 50 -height 15 -alpha 100";
gin "gui.element.add -nc -wName launcher -fName manual -name text -type r.text -x1 0 -y1 0 -x2 60 -y2 0 -size 75 -r1 0 -g1 100 -data `Manual Install` -align frame.center -scale frame";
gin "gui.element.add -nc -wName launcher -fName manual -name box -type r.box -x1 0 -y1 0 -x2 100 -y2 100 -r1 1 -g1 1 -b1 1 -a1 `255` -align frame.center -scale frame";
gin "gui.element.add -nc -wName launcher -fName manual -name hitbox -type v.hitbox -x1 0 -y1 0 -x2 100 -y2 100 -action1 `package.install.manual` -align frame.center -scale frame";
gin "gui.element.add -nc -wName launcher -fName manual -name shadow -type r.shadow -size 3 -x1 0 -y1 0 -x2 100 -y2 100 -r1 1 -g1 1 -b1 1 -a1 `255` -align frame.center -scale frame";

gin "gui.frame.add -nc -wName launcher -pName window.contents -name command -x 0 -y -10 -width 50 -height 15 -alpha 100";
gin "gui.element.add -nc -wName launcher -fName command -name text -type r.text -x1 0 -y1 0 -x2 60 -y2 0 -size 75 -r1 0 -g1 100 -data `Run Command` -align frame.center -scale frame";
gin "gui.element.add -nc -wName launcher -fName command -name box -type r.box -x1 0 -y1 0 -x2 100 -y2 100 -r1 1 -g1 1 -b1 1 -a1 `255` -align frame.center -scale frame";
gin "gui.element.add -nc -wName launcher -fName command -name hitbox -type v.hitbox -x1 0 -y1 0 -x2 100 -y2 100 -action1 `gui.command` -align frame.center -scale frame";
gin "gui.element.add -nc -wName launcher -fName command -name shadow -type r.shadow -size 3 -x1 0 -y1 0 -x2 100 -y2 100 -r1 1 -g1 1 -b1 1 -a1 `255` -align frame.center -scale frame";

gui.command | void;
    input "";
    cin ui::ans;
    gui.command_end;

cast "shell.app";
