#NoEnv
#SingleInstance, Force
#Persistent

F1:: ;with f1 you test it out (can be anything)
return
F3::ExitApp

blender(item, number of items){
     ;random number, use the number of items in the blender here
    ; get center of the screen:
    center := {"x":A_ScreenWidth//2,"y": A_ScreenHeight//2}
    ;get the blender box size. you need to find exact dimensions yourself
    x1 := center["x"]-200 ;x1 and y1 are top left corner
    y1 := center["y"]-100
    x2 := center["x"] + 200 ; bottom right corner of box
    y2 := center["y"] + 100 
    ImageSearch,foundX,foundY, x1,y1,x2,y2, images/%item%.png ;images - folder, %item%.png is item name
    if (ErrorLevel = 0) {
        msgbox % "item " item "  was found"
    }
    else {
        click, x,y ;position of the "next" button
    }
}
asd