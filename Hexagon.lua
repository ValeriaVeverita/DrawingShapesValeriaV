local composer = require( "composer" )
 
local scene = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 
 
 
 
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
 
-- create()
function scene:create( event )
 
    local sceneGroup = self.view
   --hide the status bar
display.setStatusBar(display.HiddenStatusBar)
--set the background
display.setDefault("background", 226/255, 220/255, 233/255)

--set the variables
local HW = display.contentWidth * 0.5
local HH = display.contentHeight * 0.5

--create the verticies
local verticies = {50,50; 250,50; 400,250; 250,450; 50,450; -100;250}
--create the hexagon
local hexagon = display.newPolygon(20,200,verticies)
sceneGroup:insert(hexagon)
--set the color
hexagon.fill = {type = "image", filename = "hexagon.png"}
--anchor the shape
hexagon.anchorX = 0
hexagon.anchorY = 0
--set the border of the hexagon
hexagon.strokeWidth = 10
--set the color of the border
hexagon:setStrokeColor(130/255, 113/255, 150/255)
--create "back" button
local button = display.newRoundedRect(130,90,170,100,12)
sceneGroup:insert(button)
--fill the color
button:setFillColor(130/255, 113/255, 150/255)
--create the text of the "back" button
local back = display.newText("Next", 130,90,nil,50)
sceneGroup:insert(back)
back:setFillColor(210/255, 173/255, 205/255)

--label the shape
local label = display.newText("Hexagon",70, HH+230,nil,100)
sceneGroup:insert(label)
--set the color
label:setTextColor(130/255, 113/255, 150/255)
--anchor the text
label.anchorX = 0
label.anchorY = 0

--create the text pannel
local pannel = display.newRect (HW+20,20,480,720)
sceneGroup:insert(pannel)
--anchor the pannel
pannel.anchorX = 0
pannel.anchorY = 0 
--set the color of the pannel
local paint = {
     type = "gradient",
     color1 = {147/255, 97/255, 176/255},
     color2 = {232/255, 212/255, 238/255},
     direction = down
       }
pannel.fill = paint
--write the definition on the scren
local define = display.newText("Hexagon is a six sided\npolygon.", HW+20, 190, nil, 45)
sceneGroup:insert(define)
--anchor the text
define.anchorX = 0
define.anchorY = 0
--set the color
define:setTextColor(0,0,0)

--write the formula on the screen
local formula = display.newText("To find the area of a\nregular hexagon use the\nformula A=(3√3/2)*a*a,\nwhere a is one side", HW+20,HH-100, nil,45)
sceneGroup:insert(formula)
--anchor the text
formula.anchorX = 0 
formula.anchorY = 0
--set the color of the text
formula:setTextColor(0,0,0)

--calculate the area of the hexagon, then display the area on the screen
local side = 35
local valueRoot = 1.73
local area = (3*valueRoot/2)*side*side
--write on the screen the area of the hexagon
local areaText= display.newText("The area of this\nhexagon with a side of\n"..side.." is "..area.." cm2.",HW+20,HH+90,nil,45)
sceneGroup:insert(areaText)
--anchor the text
areaText.anchorX = 0
areaText.anchorY = 0
--set the color of the text
areaText:setTextColor(0,0,0)
 
end

scene:addEventListener( "create", scene )

 
return scene