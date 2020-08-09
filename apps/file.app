#import "skye.window" "sys/lib/gui/skye" "script";
#import "skye.fullscreen" "sys/lib/gui/skye" "script";


//skye.gui.window | c::app 100 0 0 360 240 1 true 200 100 100;
skye.gui.fullscreen | c::app 100 1 true 200 100 100;

gin "gui.frame.add -nc -wName file -pName window.contents -name file.browse -x -20 -y 0 -width 60 -height 100 -alpha 100";

gin "gui.frame.add -nc -wName file -pName window.contents -name file.preview -x 30 -y 0 -width 40 -height 100 -alpha 100";
gin "gui.element.add -nc -wName file -fName file.preview -name bg -type r.box -x1 0 -y1 0 -x2 100 -y2 100 -r1 225 -g1 225 -b1 225 -a1 255 -align frame.center -scale frame";

gin "gui.frame.add -nc -wName file -pName file.preview -name file.preview.content -x 0 -y 10 -width 80 -height 40 -alpha 100";
gin "gui.element.add -nc -wName file -fName file.preview.content -name fName -type r.text -x1 0 -y1 -40 -x2 80 -y2 100 -r1 0 -g1 -100 -a1 100 -data `name: ` -size 75 -align frame.center -scale frame";
gin "gui.element.add -nc -wName file -fName file.preview.content -name fType -type r.text -x1 0 -y1 -45 -x2 80 -y2 100 -r1 0 -g1 -100 -a1 100 -data `type: ` -size 75 -align frame.center -scale frame";
gin "gui.element.add -nc -wName file -fName file.preview.content -name fSize -type r.text -x1 0 -y1 -50 -x2 80 -y2 100 -r1 0 -g1 -100 -a1 100 -data `size: ` -size 75 -align frame.center -scale frame";
gin "gui.element.add -nc -wName file -fName file.preview.content -name fFolder -type r.text -x1 0 -y1 -55 -x2 80 -y2 100 -r1 0 -g1 -100 -a1 100 -data `dir: /` -size 75 -align frame.center -scale frame";
gin "gui.element.add -nc -wName file -fName file.preview.content -name content.text -type r.text -x1 0 -y1 0 -x2 80 -y2 80 -r1 0 -g1 100 -a1 100 -data `preview: ` -size 50 -align frame.center -scale frame";
gin "gui.element.add -nc -wName file -fName file.preview.content -name shadow -type r.shadow -x1 0 -y1 0 -x2 100 -y2 100 -size 3 -r1 1 -g1 1 -b1 1 -a1 255 -align frame.center -scale frame";
gin "gui.element.add -nc -wName file -fName file.preview.content -name content -type r.box -x1 0 -y1 0 -x2 100 -y2 100 -r1 50 -g1 50 -b1 50 -a1 255 -align frame.center -scale frame";

gin "gui.frame.add -nc -wName file -pName file.preview -name file.preview.editor -x 0 -y 32.5 -width 90 -height 7.5 -alpha 100";
gin "gui.frame.add -nc -wName file -pName file.preview.editor -name file.preview.editor.addfile -x -10 -y 0 -width 40 -height 100 -alpha 100";
gin "gui.element.add -nc -wName file -fName file.preview.editor.addfile -name text -type r.text -x1 0 -y1 0 -x2 90 -y2 0 -size 50 -r1 0 -g1 100 -data `Create File` -align frame.center -scale frame";
gin "gui.element.add -nc -wName file -fName file.preview.editor.addfile -name box -type r.box -x1 0 -y1 0 -x2 100 -y2 100 -r1 200 -g1 100 -b1 100 -a1 `255` -align frame.center -scale frame";
gin "gui.element.add -nc -wName file -fName file.preview.editor.addfile -name hitbox -type v.hitbox -x1 0 -y1 0 -x2 100 -y2 100 -action1 `gui.file_create` -align frame.center -scale frame";
gin "gui.element.add -nc -wName file -fName file.preview.editor.addfile -name shadow -type r.shadow -size 3 -x1 0 -y1 0 -x2 100 -y2 100 -r1 1 -g1 1 -b1 1 -a1 `255` -align frame.center -scale frame";

gin "gui.frame.add -nc -wName file -pName file.preview.editor -name file.preview.editor.deletefile -x 10 -y 0 -width 40 -height 100 -alpha 100";
gin "gui.element.add -nc -wName file -fName file.preview.editor.deletefile -name text -type r.text -x1 0 -y1 0 -x2 90 -y2 0 -size 50 -r1 0 -g1 100 -data `Delete File` -align frame.center -scale frame";
gin "gui.element.add -nc -wName file -fName file.preview.editor.deletefile -name box -type r.box -x1 0 -y1 0 -x2 100 -y2 100 -r1 200 -g1 100 -b1 100 -a1 `255` -align frame.center -scale frame";
gin "gui.element.add -nc -wName file -fName file.preview.editor.deletefile -name hitbox -type v.hitbox -x1 0 -y1 0 -x2 100 -y2 100 -action1 `gui.file_delete` -align frame.center -scale frame";
gin "gui.element.add -nc -wName file -fName file.preview.editor.deletefile -name shadow -type r.shadow -size 3 -x1 0 -y1 0 -x2 100 -y2 100 -r1 1 -g1 1 -b1 1 -a1 `255` -align frame.center -scale frame";

gin "gui.frame.add -nc -wName file -pName window.head -name head.title -x 0 -y 0 -width 80 -height 80 -alpha 100";
gin "gui.element.add -nc -wName file -fName head.title -name title -type r.text -x1 0 -y1 0 -x2 100 -y2 0 -size 100 -r1 0 -g1 100 -data `Files - Home` -align frame.center -scale frame";

gin "gui.frame.add -nc -wName file -pName window.head -name head.search -x 0 -y -10 -width 80 -height 30 -alpha 100";
gin "gui.element.add -nc -wName file -fName head.search -name text -type r.text -x1 0 -y1 0 -x2 90 -y2 0 -size 75 -r1 0 -g1 100 -data `Search Files` -align frame.center -scale frame";
gin "gui.element.add -nc -wName file -fName head.search -name bar -type r.line -x1 0 -y1 0 -x2 100 -y2 0 -size 20 -r1 75 -g1 75 -b1 75 -a1 255 -align frame.center -scale frame";
gin "gui.element.add -nc -wName file -fName head.search -name action -type v.hitbox -x1 0 -y1 0 -x2 100 -y2 100 -action1 `gui.search` -align frame.center -scale frame";


gui.search | void;
    input "name";
    fName = ui::ans;
    input "type";
    fType = ui::ans;
    input "folder";
    fDir = ui::ans;

    #import fName fDir fType as fileTemp;
    gin ("gui.element.edit -nc -wName file -fName file.preview.content -name fName -type r.text -x1 0 -y1 -40 -x2 80 -y2 100 -r1 0 -g1 -100 -a1 100 -data `name: " & fName & "` -size 75 -align frame.center -scale frame");
    gin ("gui.element.edit -nc -wName file -fName file.preview.content -name fType -type r.text -x1 0 -y1 -45 -x2 80 -y2 100 -r1 0 -g1 -100 -a1 100 -data `type: " & fType & "` -size 75 -align frame.center -scale frame");
    gin ("gui.element.edit -nc -wName file -fName file.preview.content -name fSize -type r.text -x1 0 -y1 -50 -x2 80 -y2 100 -r1 0 -g1 -100 -a1 100 -data `size: " & length fileTemp & "` -size 75 -align frame.center -scale frame");
    gin ("gui.element.edit -nc -wName file -fName file.preview.content -name fFolder -type r.text -x1 0 -y1 -55 -x2 80 -y2 100 -r1 0 -g1 -100 -a1 100 -data `dir: " & fDir & "/` -size 75 -align frame.center -scale frame");
    gin ("gui.element.edit -nc -wName file -fName file.preview.content -name content.text -type r.text -x1 0 -y1 0 -x2 80 -y2 80 -r1 0 -g1 100 -a1 100 -data `" & fileTemp & "` -size 50 -align frame.center -scale frame");

    gin ("gui.element.edit -wName file -fName head.search -name text -type r.text -x1 0 -y1 0 -x2 90 -y2 0 -size 75 -r1 0 -g1 100 -data `" & fDir & "/" & fName & "." & fType & "` -align frame.center -scale frame");
gui.search_end;

gui.file_delete | void;
    input "name";
    fName = ui::ans;
    input "type";
    fType = ui::ans;
    input "folder";
    fDir = ui::ans;
    
    cin ("fs.file.delete -name `" & fName & "` -type `" & fType & "` -folder `" & fDir & "`");
    gin ("gui.element.edit -nc -wName file -fName file.preview.content -name fName -type r.text -x1 0 -y1 -40 -x2 80 -y2 100 -r1 0 -g1 -100 -a1 100 -data `name: ` -size 75 -align frame.center -scale frame");
    gin ("gui.element.edit -nc -wName file -fName file.preview.content -name fType -type r.text -x1 0 -y1 -45 -x2 80 -y2 100 -r1 0 -g1 -100 -a1 100 -data `type: ` -size 75 -align frame.center -scale frame");
    gin ("gui.element.edit -nc -wName file -fName file.preview.content -name fSize -type r.text -x1 0 -y1 -50 -x2 80 -y2 100 -r1 0 -g1 -100 -a1 100 -data `size: ` -size 75 -align frame.center -scale frame");
    gin ("gui.element.edit -nc -wName file -fName file.preview.content -name fFolder -type r.text -x1 0 -y1 -55 -x2 80 -y2 100 -r1 0 -g1 -100 -a1 100 -data `dir: /` -size 75 -align frame.center -scale frame");
    gin ("gui.element.edit -nc -wName file -fName file.preview.content -name content.text -type r.text -x1 0 -y1 0 -x2 80 -y2 80 -r1 0 -g1 100 -a1 100 -data `Preview: ` -size 50 -align frame.center -scale frame");

    gin ("gui.element.edit -wName file -fName head.search -name text -type r.text -x1 0 -y1 0 -x2 90 -y2 0 -size 75 -r1 0 -g1 100 -data `" & fDir & "/" & fName & "." & fType & "` -align frame.center -scale frame");
gui.file_delete_end;

gui.file_create | void;
    input "name";
    fName = ui::ans;
    input "type";
    fType = ui::ans;
    input "folder";
    fDir = ui::ans;
    input "data";
    fData = ui::ans;
    
    cin ("fs.file.make -name `" & fName & "` -type `" & fType & "` -folder `" & fDir & "` -data `" & fData & "`");
    gin ("gui.element.edit -nc -wName file -fName file.preview.content -name fName -type r.text -x1 0 -y1 -40 -x2 80 -y2 100 -r1 0 -g1 -100 -a1 100 -data `name: " & fName & "` -size 75 -align frame.center -scale frame");
    gin ("gui.element.edit -nc -wName file -fName file.preview.content -name fType -type r.text -x1 0 -y1 -45 -x2 80 -y2 100 -r1 0 -g1 -100 -a1 100 -data `type: " & fType & "` -size 75 -align frame.center -scale frame");
    gin ("gui.element.edit -nc -wName file -fName file.preview.content -name fSize -type r.text -x1 0 -y1 -50 -x2 80 -y2 100 -r1 0 -g1 -100 -a1 100 -data `size: " & length fData & "` -size 75 -align frame.center -scale frame");
    gin ("gui.element.edit -nc -wName file -fName file.preview.content -name fFolder -type r.text -x1 0 -y1 -55 -x2 80 -y2 100 -r1 0 -g1 -100 -a1 100 -data `dir: " & fDir & "/` -size 75 -align frame.center -scale frame");
    gin ("gui.element.edit -nc -wName file -fName file.preview.content -name content.text -type r.text -x1 0 -y1 0 -x2 80 -y2 80 -r1 0 -g1 100 -a1 100 -data `" & fData & "` -size 50 -align frame.center -scale frame");

    gin ("gui.element.edit -wName file -fName head.search -name text -type r.text -x1 0 -y1 0 -x2 90 -y2 0 -size 75 -r1 0 -g1 100 -data `" & fDir & "/" & fName & "." & fType & "` -align frame.center -scale frame");
gui.file_create_end;


file_open | fName fDir fType;
    #import fName fDir fType as fileTemp;
    gin ("gui.element.edit -nc -wName file -fName file.preview.content -name fName -type r.text -x1 0 -y1 -40 -x2 80 -y2 100 -r1 0 -g1 -100 -a1 100 -data `name: " & fName & "` -size 75 -align frame.center -scale frame");
    gin ("gui.element.edit -nc -wName file -fName file.preview.content -name fType -type r.text -x1 0 -y1 -45 -x2 80 -y2 100 -r1 0 -g1 -100 -a1 100 -data `type: " & fType & "` -size 75 -align frame.center -scale frame");
    gin ("gui.element.edit -nc -wName file -fName file.preview.content -name fSize -type r.text -x1 0 -y1 -50 -x2 80 -y2 100 -r1 0 -g1 -100 -a1 100 -data `size: " & length fileTemp & "` -size 75 -align frame.center -scale frame");
    gin ("gui.element.edit -nc -wName file -fName file.preview.content -name fFolder -type r.text -x1 0 -y1 -55 -x2 80 -y2 100 -r1 0 -g1 -100 -a1 100 -data `dir: " & fDir & "/` -size 75 -align frame.center -scale frame");
    gin ("gui.element.edit -nc -wName file -fName file.preview.content -name content.text -type r.text -x1 0 -y1 0 -x2 80 -y2 80 -r1 0 -g1 100 -a1 100 -data `" & fileTemp & "` -size 50 -align frame.center -scale frame");

    gin ("gui.element.edit -wName file -fName head.search -name text -type r.text -x1 0 -y1 0 -x2 90 -y2 0 -size 75 -r1 0 -g1 100 -data `" & fDir & "/" & fName & "." & fType & "` -align frame.center -scale frame");
file_open_end;

cast "shell.app";
