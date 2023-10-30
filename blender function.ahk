#NoEnv
#SingleInstance, Force
#Persistent
;item names surrond the name in " ", then put the numbers of items so full function call looks like
;blender("blue extract, 1") the number is the amount of items u want
;blue extract
;caustic
;enzyme
;field dice
;glitter
;glue 
;gumdrops
;hard wax
;loaded dice
;moon charm
;oil
;purp
;red extract
;smooth dice
;smoothie
;soft wax
;star jelly
;swirl
;trop
;turp
F1:: 
;EDIT THE FUNCTION BELOW FOR WHAT U WANT
blender("turp", 1)
return
F3::ExitApp

blender(item, numberofitems){
    CoordMode, Mouse, Client
    CoordMode, Pixel, Client
    ; get center of the screen:
    center := {"x":A_ScreenWidth//2,"y": A_ScreenHeight//2}
    ;get the blender box size. you need to find exact dimensions yourself
    x1 := center["x"] - 683 ;x1 and y1 are top left corner
    y1 := center["y"] - 354
    x2 := center["x"] + 844 ; bottom right corner of box
    y2 := center["y"] + 515
    loop, 20 
    {
    Sleep, 500
    ImageSearch,foundX,foundY, x1,y1,x2,y2, images/%item%.png ;images - folder, %item%.png is item name
    if (ErrorLevel = 0) {
        loop, %numberofitems%
    {
        click, 906,666
    }
    }
    else {
        click, 1217,655 ;position of the "next" button
}
}
}
