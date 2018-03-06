--Title : Drawing Shapes
--Name : Valeria Veverita
--Course: ICS2O
--This program displays an oval, gives its definition and calculates its area
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
 	composer.gotoScene("Square",{effect = "fade", time = 500})
 end
-- create()
function scene:create( event )
 
    local sceneGroup = self.view
    --Set the background
display.setDefault("background", 239/255, 207/255, 219/255)
--hide the status bar
display.setStatusBar(display.HiddenStatusBar)
--create the center of the width and height
local HW = display.contentWidth * 0.5
local HH = display.contentHeight * 0.5
--create the ellipse
local oval = display.newRoundedRect(10, 130, 400, 600, 200)
--anchor 
oval.anchorX = 0
oval.anchorY=0
--fill the color
oval.fill = {type = "image", filename = "circle.png"}
--Create the border
oval.strokeWidth = 10
--set the color
oval:setStrokeColor(152/255, 101/255, 108/255)
sceneGroup:insert(oval)

--create "back" button
local button = display.newRoundedRect(110,70,170,100,12)
--fill the color
button:setFillColor(152/255, 101/255, 108/255)
sceneGroup:insert(button)
--create the text of the "back" button
local back = display.newText("Next", 110,70,nil,50)
back:setFillColor(233/255, 192/255, 197/255)
sceneGroup:insert(back)

--create text pannel
local pannel= display.newRect(HW-50, 20, 540, 710)
--fill with color
local paint = {
     type = "gradient",
     color1 = {233/255, 192/255, 197/255},
     color2 = {183/255, 113/255, 127/255},
     direction = down
    }
pannel.fill = paint
sceneGroup:insert(pannel)

--anchor the pannel
pannel.anchorY = 0
pannel.anchorX = 0
--Label the shape
local ellipse = display.newText("Ellipse(oval)",HW-30, 30, nil, 95)
sceneGroup:insert(ellipse)
--anchor the text
ellipse.anchorX = 0
ellipse.anchorY = 0
--set the color of the text
ellipse: setTextColor(152/255, 101/255, 108/255)

--Define the shape
local define = display.newText("Oval is a closed curve\nin a plane that is like a\ncircle, but is wider in one\ndirection than the other.", HW-40, 125, nil, 45)
sceneGroup:insert(define)                                                                                                                                
define.anchorX = 0
define.anchorY = 0
--set the color of the text
define:setTextColor(0,0,0)
--Write the formula of how to find the area of an ellipse
local areaDef = display.newText("To find the are of an oval\nuse the formula A=пab,\nwhere a and b represent\nthe axis", HW-40,HH-50, nil, 45)
sceneGroup:insert(areaDef)
areaDef.anchorX = 0
areaDef.anchorY = 0
--set text color
areaDef:setTextColor(0,0,0)

--Write the area of the ellipse on the screen and give a value to both axis
local axisA = 70
local axisB = 130
local PI = 3.14
local area= PI*axisB*axisA
local areaText = display.newText ("The area of this ellipse \nwith first axis of " .. axisA .. "cm and\nthe second axis of " .. axisB .. "cm \nis " .. area .. " cm2", HW-40,HH+150, nil, 45)
sceneGroup:insert(areaText)
areaText.anchorX = 0
areaText.anchorY = 0
--set thext color
areaText:setTextColor(0,0,0)
    -- Code here runs when the scene is first created but has not yet appeared on screen
button:addEventListener("tap",changeScenes)
end
 
 

scene:addEventListener( "create", scene )

 
return scene

