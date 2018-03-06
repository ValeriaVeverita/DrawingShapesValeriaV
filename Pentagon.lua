--Title : Drawing Shapes
--Name : Valeria Veverita
--Course: ICS2O
--This program displays a pentagon, gives its definition and calculates its area
local composer = require( "composer" )
 
local scene = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 
 
 local function changeScene( )
     composer.gotoScene("Octagon",{effect = "fade", time = 500})
 end
 
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
 
-- create()
function scene:create( event )
 
    local sceneGroup = self.view--hide the status bar
display.setStatusBar(display.HiddenStatusBar)
--set the background
display.setDefault("background",233/255, 192/255, 197/255)
--set the variables
local HW = display.contentWidth * 0.5
local HH = display.contentHeight * 0.5

--set the verticies
local verticies = {50,50; 280,250; 280,500; -150,500; -150,250}
--create the pentagon
local pentagon = display.newPolygon(40,150,verticies)
sceneGroup:insert(pentagon)
--anchor the shape
pentagon.anchorX = 0
pentagon.anchorY = 0
--set the color
pentagon.fill = {type = "image", filename = "pentagon.png"}
--set the border
pentagon.strokeWidth = 10
--set the border color
pentagon:setStrokeColor(150/255, 75/255, 87/255)
--create "back" button
local button = display.newRoundedRect(120,90,170,100,12)
sceneGroup:insert(button)
--fill the color
button:setFillColor(150/255, 75/255, 87/255)
--create the text of the "back" button
local back = display.newText("Next", 120,90,nil,50)
sceneGroup:insert(back)
back:setFillColor(233/255, 192/255, 197/255)

--label the shape
local label = display.newText("Pentagon",50,HH+240,nil,100)
sceneGroup:insert(label)
--anchor the text
label.anchorX = 0
label.anchorY = 0
--set the color
label:setTextColor(150/255, 75/255, 87/255)

--create the pannel
local pannel = display.newRect(HW-10,20,500,720)
sceneGroup:insert(pannel)
--anchor the rectangle
pannel.anchorX = 0
pannel.anchorY = 0
--set the color of the pannel

local paint = {
     type = "gradient",
     color1 = {152/255, 101/255, 108/255},
     color2 = {250/255, 215/255, 218/255},
     direction = down
      }  
pannel.fill = paint
sceneGroup:insert(pannel)
--write the definition
local define = display.newText("Pentagon is any five-sided\npolygon. To find the area",HW-5,45,nil,40)
sceneGroup:insert(define)
--anchor the text
define.anchorX = 0
define.anchorY = 0
-- set the color of the text
define:setTextColor(0,0,0)

--write how to find the area of the pentagon
local formula = display.newText(" of a pentagon divide,it into\nfive triangles.Then calculate\nthe area of a triangle\nA=0.5*base*height.\nThen multiply by five to find\nthe total area.",HW-5,HH-250,nil,40)
sceneGroup:insert(formula)
formula.anchorX = 0
formula.anchorY = 0
--set the color of the text
formula:setTextColor(0,0,0)

--calculate the area of the pentagon
local base = 36
local height =41
local area = 0.5*base*height
local pentArea = 5*area
--write the area on the screen
local textArea = display.newText("To find the area of this\npentagon,I divided it\nin 5 triangles,\nthat have the base "..base.."\nand height "..height ..".The area of\nthis pentagon is "..pentArea.."cm2.", HW-5,HH+10,nil,40)
sceneGroup:insert(textArea)
--anchor the text
textArea.anchorX = 0
textArea.anchorY = 0
-- set text color
    textArea:setFillColor(0,0,0)

button:addEventListener("tap", changeScene)
end
 
 
scene:addEventListener( "create", scene )

return scene
