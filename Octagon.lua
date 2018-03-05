local composer = require( "composer" )
 
local scene = composer.newScene()


local function changeScene(  )
    composer.gotoScene("Hexagon",{effect = "fade",time = 500})
end


-- create()
function scene:create( event )
 
    local sceneGroup = self.view
    -- hide the status bar
display.setStatusBar(display.HiddenStatusBar)
-- set the background
display.setDefault("background",208/255, 225/255, 235/255)
--set variables
local HW = display.contentWidth * 0.5
local HH = display.contentHeight * 0.5
--create the verticies
local verticies = {50,50; 200,50; 300,180; 300, 350; 200, 480; 50,480; -50,350; -50,180}
local octagon = display.newPolygon(30,150,verticies)
sceneGroup:insert(octagon)
octagon.anchorX = 0
octagon.anchorY = 0
--set the color
octagon.fill = { type = "image", filename = "octagon.png"}
--create the border
octagon.strokeWidth = 10
--set the color
octagon:setStrokeColor(78/255, 93/255, 127/255)

--create the pannel
local pannel = display.newRect(HW-80, 20, 550, 710)
sceneGroup:insert(pannel)
pannel.anchorX = 0
pannel.anchorY = 0
--set the color
local paint = {
     type = "gradient",
      color1= {226/255, 234/255, 242/255},
     color2 =  {78/255, 93/255, 127/255},
     direction = down
      }
pannel.fill = paint


--create "back" button
local button = display.newRoundedRect(120,80,170,100,12)
sceneGroup:insert(button)
--fill the color
button:setFillColor(78/255, 93/255, 127/255)
--create the text of the "back" button
local back = display.newText("Next", 120,80,nil,50)
sceneGroup:insert(back)
back:setFillColor(226/255, 234/255, 242/255)

--label the shape
local label = display.newText("Octagon",30, HH+280, nil, 100)
sceneGroup:insert(label)
label.anchorX = 0
label.anchorX = 0
-- set the color
label:setTextColor(78/255, 93/255, 127/255)

--write the definition
local def = display.newText("Octagon is an eight-sided\npolygon.", HW - 55,200,nil,45)
sceneGroup:insert(def)
def.anchorX = 0
def.anchorX = 0
--set the color 
def:setTextColor(0,0,0)

--Write the formula
local formula = display.newText("To find the area of a\nregular octagon use the\nformula A=2(1+√2)a2,\nwhere a is one side.", HW-55,250,nil,45)
sceneGroup:insert(formula)
formula.anchorX = 0
formula.anchorY = 0
--set the color
formula:setFillColor(0,0,0)

--set the value of one side and calculate the area
local side = 76
local valueRoot = 1.41
local area = 2*(1+valueRoot)*side*side
-- write the area of the octagon
local areaText = display.newText("The area of this octagon\nwith a side of "..side.." is\n"..area.." cm2.", HW-60,HH+60,nil,45)
sceneGroup:insert(areaText)
areaText.anchorX = 0
areaText.anchorY = 0
--set the color of the text
areaText:setTextColor(0,0,0)

button:addEventListener("tap", changeScene)
    
end

scene:addEventListener( "create", scene )

return scene