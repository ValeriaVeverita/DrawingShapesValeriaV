
	
	local composer = require( "composer" )
 
local scene = composer.newScene()

local function changeScene( )
	composer.gotoScene("Shapes", {effect = "fade", time = 500})
end

function scene:create( event )
 
    local sceneGroup = self.view
    --hide the status bar
display.setStatusBar(display.HiddenStatusBar)
--set the background
display.setDefault("background",235/255, 208/255, 208/255)
--set the variables
local HW = display.contentWidth * 0.5
local HH = display.contentHeight * 0.5

--Start Creating the Figure : Owl
--create the owl's feet
local verticies = {50,50; 50,130; 0,130 }
local foot1 = display.newPolygon(HW * 1.38 , HH*1.76,verticies)
sceneGroup:insert(foot1)
foot1:setFillColor(222/255, 106/255, 47/255)
local verticies = {50,50; 100,130; 50,130 }
local foot2 = display.newPolygon(HW * 1.65 , HH*1.857,verticies)
sceneGroup:insert(foot2)
foot2:setFillColor(222/255, 106/255, 47/255)
--anchor the object
foot1.anchorX = 0 
foot1.anchorY = 0

--Create the body
local body = display.newRoundedRect(HW+120,HH-50,300,400,200)
sceneGroup:insert(body)
--anchor the body
body.anchorX = 0
body.anchorY = 0
--set the color
body:setFillColor(160/255, 125/255, 85/255)
local stomach = display.newRoundedRect(HW+170,HH+120, 200,210,100)
sceneGroup:insert(stomach)
stomach.anchorX = 0
stomach.anchorY = 0
--set the color
stomach:setFillColor(235/255, 214/255, 168/255)

--Create the Head
--first ear
local verticies = {150,50; 40,250; -70,250}
local ear1 = display.newPolygon(HW+250,100, verticies)
sceneGroup:insert(ear1)
--anchor the object 
ear1.anchorX = 0
ear1.anchorY = 0
--set the color
ear1:setFillColor(160/255, 125/255, 85/255)

--second ear
local verticies = {-40,50; 200,250 ; 70,250}
local ear2 = display.newPolygon(HW+50,100,verticies)
sceneGroup:insert(ear2)
--anchor the object
ear2.anchorX = 0
ear2.anchorY = 0
ear2:setFillColor(160/255, 125/255, 85/255)

--the head
local head = display.newCircle (HW+270,HH-100,150)
sceneGroup:insert(head)
--set the color
head:setFillColor(160/255, 125/255, 85/255)

-- create the nose
local verticies = {50,50; 100,50; 75,150}
local nose = display.newPolygon(HW*1.5,HH,verticies)
sceneGroup:insert(nose)
--set the color
nose:setFillColor(222/255, 106/255, 47/255)

--create the eyes
local eye1 = display.newCircle(HW+190,HH-100,53)
sceneGroup:insert(eye1)
local pupil1 = display.newCircle(HW+180,HH-100,30)
sceneGroup:insert(pupil1)
--set the color
pupil1:setFillColor(0,0,0)
local eye2 = display.newCircle(HW *1.64,HH-100,53)
sceneGroup:insert(eye2)
local pupil2 = display.newCircle(HW * 1.62,HH-100,30)
sceneGroup:insert(pupil2)
--set the color
pupil2:setFillColor(0,0,0)

--create the wing
local wing = display.newRoundedRect(HW+150,HH+150,110,280,200)
sceneGroup:insert(wing)
wing:setFillColor(112/255, 98/255, 77/255)
local verticies = {50,50; 150,50; 100,100}
local tipWing = display.newPolygon(HW+150,HH+280,verticies)
sceneGroup:insert(tipWing)
tipWing:setFillColor(112/255, 98/255, 77/255)

-- create second wing
local wing2 = display.newRoundedRect(HW+400,HH+150,110,280,200)
sceneGroup:insert(wing2)
wing2:setFillColor(112/255, 98/255, 77/255)
local verticies = {50,50; 150,50; 100,100}
local tipWing2 = display.newPolygon(HW+400,HH+280,verticies)
sceneGroup:insert(tipWing2)
tipWing2:setFillColor(112/255, 98/255, 77/255)

-- create the text pannel
local verticies = {50,50; 150,100; 50, 150}
local triangle = display.newPolygon(HW+50,300,verticies)
sceneGroup:insert(triangle)
local paint = {
 type = "gradient",
	 color1 = {167/255, 133/255, 135/255},
	 color2 = {214/255, 226/255, 242/255},
	 direction = down	
}
triangle.fill = paint

local pannel = display.newRoundedRect(20,20,500,700,200)
sceneGroup:insert(pannel)
--anchor the object
pannel.anchorX = 0
pannel.anchorY = 0
local paint = {
 type = "gradient",
	 color1 = {167/255, 133/255, 135/255},
	 color2 = {214/255, 226/255, 242/255},
	 direction = down	
}
pannel.fill = paint

--create "back" button
local button = display.newRoundedRect(270,HH+250,170,100,12)
--fill the color
button:setFillColor(152/255, 101/255, 108/255)
sceneGroup:insert(button)
--create the text of the "back" button
local back = display.newText("Back", 270,HH+250,nil,50)
back:setFillColor(233/255, 192/255, 197/255)
sceneGroup:insert(back)

--Create the text
local text = display.newText("Today we have learnt\nabout different types of\npolygons. We also\ndiscovered how do\npolygons look like and\nhow to calculate their\narea. If you want to\nreview our lesson press\nback button ",40,120,nil,45)
text:setFillColor(0,0,0)
sceneGroup:insert(text)
text.anchorX = 0
text.anchorY = 0

button:addEventListener("tap",changeScene)
end
 
scene:addEventListener( "create", scene )

return scene