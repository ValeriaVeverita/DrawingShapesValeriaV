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
 	composer.gotoScene("Diamond",{effect = "fade",time = 500})
 end
-- create()
function scene:create( event )

    local sceneGroup = self.view
     -- set the background
display.setDefault("background", 236/255, 203/255, 217/255)
  --hide the status bar
display.setStatusBar(display.HiddenStatusBar)
-- create variables 
local HW = display.contentWidth * 0.5
local HH = display.contentHeight * 0.6
-- create the variables that will store the value for width
local width = 330
local widthA = width
-- create the square
local square = display.newRect(HW*0.5,HH*0.75,width, widthA)
sceneGroup:insert(square)
-- fill the color
square.fill = {type = "image", filename = "square.png"}
--create the border
square.strokeWidth = 10
-- set the border color
square:setStrokeColor(152/255, 101/255, 108/255)


--create the back button
local button = display.newRoundedRect(120,90,170,100,12)
--fill the color
button:setFillColor(152/255, 101/255, 108/255)
sceneGroup:insert(button)
--create the text of the "back" button
local back = display.newText("Next", 120,90,nil,50)
back:setFillColor(238/255, 170/255, 175/255)
sceneGroup:insert(back)

--label the square
local text = display.newText("Square", HW*0.5, HH+130, nil, 90)
sceneGroup:insert(text)
--set the color of the square
text: setTextColor(152/255, 101/255, 108/255)

--create the definition pannel
local pannel = display.newRect(HW-40, 20, 530, 700)
--anchor the pannel
pannel.anchorX = 0
pannel.anchorY = 0
--set the color
local paint = {
     type = "gradient",
     color1 = {234/255, 191/255, 208/255},
     color2 = {156/255, 105/255, 111/255},
     direction = down
    }
pannel.fill = paint
sceneGroup:insert(pannel)

-- write the definition on the screen
local definition = display.newText("Square is a regular\nquadrilateral.It has four\nequal sides and four\n equal angles\n(90-degree angles)",HW-30, 90,nil, 45 )
--anchor the text
definition.anchorX = 0
definition.anchorY = 0
--set the color of the text
definition:setTextColor(0,0,0)
sceneGroup:insert(definition)

--Write the fromula (the area of the square)
local def = display.newText("To find the area of a\nsquare use the formula\nA=w2, w-width",HW-30, 340, nil ,45)
def.anchorX = 0
def.anchorY = 0
--set the color of the etxt
def:setTextColor(0,0,0)
sceneGroup:insert(def)
--Calculate the area of the square
local area = width*width
local areaDef = display.newText("The area of this\nsquare with a width\nof " .. width .. " is ".. area .. "cm2", HW-30, 560, nil, 45)
areaDef.anchorX = 0
areaDef.anchor = 0
--set the color of the text
areaDef:setTextColor(0,0,0)
sceneGroup:insert(areaDef)
button:addEventListener("tap", changeScenes)
end
 

scene:addEventListener( "create", scene )
 
return scene
