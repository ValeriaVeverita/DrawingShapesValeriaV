local composer = require( "composer" )
 
local scene = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 
 
 
 
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
 local function changeScenes(  )
   composer.gotoScene("Trapezoid",{effect = "fade", time = 500 })
 end
-- create()
function scene:create( event )
 
    local sceneGroup = self.view
    -- set the background
display.setDefault("background",217/255, 226/255, 236/255)
--hide the status bar
display.setStatusBar(display.HiddenStatusBar)
--set variables
local HW = display.contentWidth * 0.5
local HH = display.contentHeight * 0.5
--set the verticies
local verticies = {185,0; 390,300; 185,600; 0,300}
local diamond = display.newPolygon(HW*0.1,90, verticies)
sceneGroup:insert(diamond)
-- set the color
diamond.fill={type = "image", filename = "diamond.png"}
--anchor the shape
diamond.anchorX = 0
diamond.anchorY = 0
-- create the border
diamond.strokeWidth = 10
-- set strokes color
diamond:setStrokeColor(77/255, 97/255, 151/255)
--create "back" button
local button = display.newRoundedRect(110,100,170,100,12)
sceneGroup:insert(button)
--fill the color
button:setFillColor(77/255, 97/255, 151/255)
--create the text of the "back" button
local back = display.newText("Next", 110,100,nil,50)
sceneGroup:insert(back)
back:setFillColor(205/255, 220/255, 238/255)

--Create the definition pannel
local pannel = display.newRect(HW-40, 20, 5300, 700)
pannel.anchorY = 0
pannel.anchorX = 0
--set the color
local paint = {
     type = "gradient",
     color1 = {205/255, 220/255, 238/255},
     color2 = {77/255, 97/255, 151/255},
     direction = down
    }
pannel.fill = paint
sceneGroup:insert(pannel)

--Label the shape
local label = display.newText("Rhombus",HW+25, 30 , nil, 90)
sceneGroup:insert(label)
label.anchorX = 0
label.anchorY = 0
-- set the color of the text
label:setFillColor(121/255, 101/255, 178/255)

--write the definition on the screen
local definition = display.newText("Rhombus - parallelogram\nwith opposite equal acute\nangles, opposite equal\nobtuse angles,and four\nequal sides. To find the",HW-30,120, nil,45)
sceneGroup:insert(definition)
definition.anchorX = 0
definition.anchorY = 0
--set the color
definition:setFillColor(0,0,0)

--write the formula
local formula = display.newText(" area of this rhombus,use\nthe fromula A=p*q/2, where\np and q are diagonals", HW-30, HH-15, nil, 45)
sceneGroup:insert(formula)
formula.anchorX = 0
formula.anchorY = 0
--set the color
formula:setFillColor(0,0,0)

-- set the values of the diagonals and calculate the area
local digA = 35
local digB = 78
local area = digB*digA/2

-- write the area of the rhombus
local areaText = display.newText("The area of this rhombus\nwith a diagonal of "..digA.." and\nanother diagonal of "..digB.." is\n"..area.." cm2",HW-30,HH+130, nil,45)
sceneGroup:insert(areaText)
areaText.anchorX = 0
areaText.anchorY = 0
--set the color
areaText:setFillColor(0,0,0)
button:addEventListener("tap",changeScenes)
end
 
 

scene:addEventListener( "create", scene )
 
return scene

