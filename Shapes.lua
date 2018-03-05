local composer = require( "composer" )
 
local scene = composer.newScene()

local widget = require ("widget")
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 
 
 
 
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------


local function changeScenes(  )
    composer.gotoScene("Triangle",{effect = "fade", time=500})
    
end



-- create()
function scene:create( event )
 
    local sceneGroup = self.view
   -- set the background color
display.setDefault("background", 227/255, 210/255, 209/255)

-- hide status bar
display.setStatusBar(display.HiddenStatusBar)
-- create local variables
local halfW = display.contentWidth * 0.5
local halfH = display . contentHeight * 0.5



-- create the verticies of the triangle
local verticies = {60,0; 200,200; -100,200}
-- create a triangle
local triangle = display.newPolygon( 200, 150,verticies )
-- fill with color
local paint = {
     type = "gradient",
     color1 = {0.71764705882,0.66666666666,0.74901960784},
     color2 = {0.52156862745,0.4431372549,0.58823529411},
     direction = down
    }
triangle.fill = paint
-- Create the border
triangle.strokeWidth = 2
-- set border's color
triangle:setStrokeColor(101/255,81/255,122/255)
sceneGroup:insert(triangle)
 -- create the title
 local title
 title = display.newText("Shapes", halfW, halfH, nil, 150)
 --set the color of the title
 title:setFillColor (101/255,81/255,122/255)
sceneGroup:insert(title)
 -- Create the definition button
 local defintionButton
 defintionButton = display.newRoundedRect (halfW + 150, halfH * 0.75, 150, 80, 12)
 --fill with color
 defintionButton: setFillColor (222/255,216/255,220/255)
 --create the corder
 defintionButton.strokeWidth = 3
 --set the color of the border
 defintionButton: setStrokeColor (101/255,81/255,122/255)
sceneGroup:insert(defintionButton)

 -- create the button text
 local definition = display.newText ("START", halfW + 150, halfH * 0.75, nil, 35 )
 --set the color of the text
 definition: setFillColor ( 101/255,81/255,122/255)
sceneGroup:insert(definition)

-- create the potential oval 
local oval = display.newRoundedRect ( 380, 40, 280, 200, 100 )
--anchor the shape
oval.anchorX = 0
oval.anchorY = 0
--fill with color
local paintA = {
     type = "gradient",
     color1 = {195/255, 141/255, 150/255},
     color2 = {101/255,81/255,122/255},
     direction = up
    }

oval.fill = paintA
sceneGroup:insert(oval)
 
-- create the square
local width = 200
local widthAnother = width
local square = display.newRect (halfW + 330, 130, width, widthAnother)
--fill the color
local paintF = {
     type = "gradient",
     color1 = {218/255, 172/255, 198/255},
     color2 = {157/255, 109/255, 128/255},
     direction = up
    }
square.fill = paintF
--create the border
square.strokeWidth = 3
--set the color of the border
square: setStrokeColor(101/255,81/255,122/255)
sceneGroup:insert(square)

--create the verticies of the diamond
verticies = {50,50; 150,200; 50,350; -50,200}
--create the diamond
local diamond = display.newPolygon (halfW + 280, halfH-130, verticies)
diamond.anchorX = 0
diamond.anchorY = 0
--fill with color
local paintB = {
     type = "gradient",
     color1 = {195/255, 141/255, 150/255},
     color2 = {221/255, 179/255, 195/255},
     direction = up
    }
diamond.fill = paintB
--create the border
diamond.strokeWidth = 3
--set the color of the border
diamond: setStrokeColor (101/255,81/255,122/255)
sceneGroup:insert(diamond)

-- create the verticies of the hexagon
verticies = { 50,50; 150,50; 220,150; 150,250; 50,250; -20;150}
--create the hexagon
local hexagon = display.newPolygon(5, halfH-90, verticies)
hexagon.anchorX = 0
hexagon.anchorY = 0
--fill with color
local paintV = {
     type = "gradient",
     color1 = {159/255, 148/255, 184/255},
     color2 = {223/255, 232/255, 242/255},
     direction = up
    }
hexagon.fill = paintV
--create the border
hexagon.strokeWidth = 3
--set the color of the border
hexagon: setStrokeColor (101/255,81/255,122/255)
sceneGroup:insert(hexagon)

--create the verticies of the trapezoid
verticies = {50,50; 150,50; 280,230; -80,230}
--create the trapezoid
local trapezoid = display.newPolygon(halfW+130, halfH+180, verticies)
trapezoid.anchorX = 0
trapezoid.anchorY = 0
-- fill with color
paintI = {
     type = "gradient",
     color1 = {215/255, 221/255, 228/255},
     color2 = {174/255, 196/255, 227/255},
     direction = up
    }
trapezoid.fill = paintI
--create the border
trapezoid.strokeWidth = 3
--set the color of the border
trapezoid:setStrokeColor(101/255,81/255,122/255)
sceneGroup:insert(trapezoid)

--create the verticies of the octagon
verticies = {50,50; 170,50; 220,120; 220,210; 170, 270; 60,270; -0,210; -0,120}
--create the octagon
local octagon = display.newPolygon(40, halfH+135, verticies)
octagon.anchorX = 0
octagon.anchorY = 0
--fill with color
local paintD = {
     type = "gradient",
     color1 = {176/255, 199/255, 224/255},
     color2 = {181/255, 145/255, 146/255},
     direction = up
    }
octagon.fill = paintD
--create the border
octagon.strokeWidth = 3
--set the color of the border
octagon:setStrokeColor(101/255,81/255,122/255)
sceneGroup:insert(octagon)

--create the vericies of the pentagon
verticies = {50,50; 180,180; 180,330; -80,330; -80,180}
--create the pentagon
local pentagon = display.newPolygon(halfW-40, halfH+220, verticies)
--fill with color
local paintC = {
     type = "gradient",
     color1 = {215/255, 221/255, 228/255},
     color2 = {221/255, 179/255, 195/255},
     direction = up
    }
pentagon.fill = paintC
--create the border
pentagon.strokeWidth=3
--set the border color
pentagon:setStrokeColor(101/255,81/255,122/255)
    -- Code here runs when the scene is first created but has not yet appeared on screen
 sceneGroup:insert(pentagon)
 
 
 defintionButton:addEventListener( "tap",changeScenes)
end
 
 

scene:addEventListener( "create", scene )

 
return scene