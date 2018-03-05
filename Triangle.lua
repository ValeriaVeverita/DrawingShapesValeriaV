

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
 	composer.gotoScene("Oval",{effect = "fade", time = 500})
 end
-- create()
function scene:create( event )
 
    local sceneGroup = self.view
    --set the background
display.setDefault("background",214/255, 203/255, 213/255)
--set the status bar
display.setStatusBar(display.HiddenStatusBar)
--create the variables
local HW = display.contentWidth*0.5
local HH = display.contentHeight*0.5
--set the verticies of the triangle
local verticies = {200,50; 350,500; 10,500 }
--create the traingle
local triangle = display.newPolygon(HW*0.5, HH*0.9, verticies)
--fill with color
triangle.fill = {type = "image",filename ="triangle.png"}
--create the border
triangle.strokeWidth = 10
--set border color
triangle:setStrokeColor(124/255, 105/255, 146/255)
sceneGroup:insert(triangle)

--create "back" button
local button = display.newRoundedRect(120,100,170,100,12)
--fill the color
button:setFillColor(124/255, 105/255, 146/255)
sceneGroup:insert(button)
--create the text of the "back" button
local back = display.newText("Next", 120,100,nil,50)
back:setFillColor(214/255, 203/255, 213/255)
sceneGroup:insert(back)
--label the shape
local myText=display.newText("Triangle",260, HH+260, nil, 100)
myText:setFillColor(124/255, 105/255, 146/255)
sceneGroup:insert(myText)
--create the definition pannel
local panel = display.newRect(HW+240, HH, 500,700)
local paint = {
     type = "gradient",
     color1 = {0.71764705882,0.66666666666,0.74901960784},
     color2 = {0.52156862745,0.4431372549,0.58823529411},
     direction = down
    }
panel.fill = paint
sceneGroup:insert(panel)
--create the text
local define = display.newText("A triangle is a polygon \nwith three edges \n" .. "and three" , HW+230, HH-250, nil, 45)
--set the color
define:setFillColor(0,0,0)
sceneGroup:insert(define)
--define area
local areaDef = display.newText("To find the area of a \ntrainge use the fromula\n A=h*b/2\n where h-height and\nb-base", HW+230, HH-50, nil ,45)
--set the color
areaDef:setFillColor(0,0,0)
sceneGroup:insert(areaDef)
--Create the variable(heiht and base), then calculate the area
local height = 100
local base = 50
local area= base*height/2
--Write the area on the screen
local area = display.newText("The area of this triangle\nwith a base of " .. base .. " cm \nand a height of " .. height .. "cm\nis " .. area .. " cm2", HW+240, HH+165, nil, 45)
area:setTextColor(0,0,0)
sceneGroup:insert(area)
button:addEventListener("tap",changeScenes)
    -- Code here runs when the scene is first created but has not yet appeared on screen
 
end
 
 

scene:addEventListener( "create", scene )

return scene