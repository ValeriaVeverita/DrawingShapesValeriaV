local composer = require( "composer" )
 
local scene = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 
 
 
 local function changeScene(  )
     composer.gotoScene("Pentagon",{effect="fade",time =500})
 end
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
 
-- create()
function scene:create( event )
 
    local sceneGroup = self.view
    --remove the status bar
display.setStatusBar(display.HiddenStatusBar)
--set the background
display.setDefault("background",227/255, 210/255, 209/255)
--set the variables
local HW = display.contentWidth * 0.5
local HH = display.contentHeight * 0.5

--set the verticies
local verticies = {50,50; 250,50; 400,350; -100,350}
--create the trapezoid
local trapezoid = display.newPolygon(20,200,verticies)
sceneGroup:insert(trapezoid)
--set the color
trapezoid.fill = {type = "image", filename = "trapezoid.png"}
--set the border
trapezoid.strokeWidth = 10
--set the color of the border
trapezoid:setStrokeColor(123/255, 99/255, 109/255)
--anchor the shape
trapezoid.anchorX = 0
trapezoid.anchorY = 0
--create "back" button
local button = display.newRoundedRect(130,100,170,100,12)
sceneGroup:insert(button)
--fill the color
button:setFillColor(123/255, 99/255, 109/255)
--create the text of the "back" button
local back = display.newText("Next", 130,100,nil,50)
sceneGroup:insert(back)
back:setFillColor(213/255, 191/255, 195/255)

--label the shape
local label = display.newText("Trapezoid",60,HH+150,nil,100)
sceneGroup:insert(label)
--anchor the text
label.anchorX = 0
label.anchorY = 0
--set the text color
label:setTextColor(123/255, 99/255, 109/255)

--create text pannel
local pannel = display.newRect(HW+30,20,460,720)
sceneGroup:insert(pannel)
--anchor the pannel
pannel.anchorX = 0
pannel.anchorY = 0
--set the color of the pannel
local paint = {
     type = "gradient",
     color1 = {162/255, 140/255, 156/255},
     color2 = {224/255, 207/255, 214/255},
     direction = down
    }
pannel.fill = paint

--write the definition on the screen
local define = display.newText("Trapezoid is a\nquadrilateral with\nat least one pair of\nparallel sides.",HW+30,30,nil,45)
sceneGroup:insert(define)
--anchor the text
define.anchorX = 0
define.anchorY = 0
--set the color of the text
define:setTextColor(0,0,0)

--write the formula of how to find the area of a trapezoid
local formula = display.newText("To find the area of a\ntrapezoid use the\nformula A=(a+b)/2*h,\nwhere a,b are the\n"..
    "bases and h is the\nheight. The area of this", HW+30,230,nil,45)
sceneGroup:insert(formula)
--anchor the text
formula.anchorX = 0
formula.anchorY = 0
--set the color
formula:setTextColor(0,0,0)

--calculate the area of the trapezoid
local baseF = 10
local baseS = 50
local height = 40
local area = (baseF+baseS)/2*height
--write the area of the trapezoid on the screen
local areaText = display.newText("trapezoid with one\nbase of " .. baseF.." ,other base\nof "..baseS.." and the height\n of "..height.." is "..area.." cm2.",HW+30,HH+140,nil,45)
sceneGroup:insert(areaText)
--anchor the text
areaText.anchorX = 0
areaText.anchorY = 0
--set the color of the text
areaText:setTextColor(0,0,0)
button:addEventListener("tap",changeScene)
   
end
 
 

 
 

scene:addEventListener( "create", scene )
 
return scene