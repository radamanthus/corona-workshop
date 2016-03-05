-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Draw the spacehip
startX = display.viewableContentWidth / 2
startY = display.viewableContentHeight - 100
spaceship = display.newImage( "spaceship.png", startX, startY )

-- Draw the UI controls
buttonY = display.viewableContentHeight
leftButtonX = (display.viewableContentWidth/2) - 100
fireButtonX = (display.viewableContentWidth/2)
rightButtonX = (display.viewableContentWidth/2) + 100
leftButton = display.newImage( "button-left.png", leftButtonX, buttonY )
fireButton = display.newImage( "button-fire.png", fireButtonX, buttonY )
rightButton = display.newImage( "button-right.png", rightButtonX, buttonY )

-- Define the button event handlers
local function onLeftButtonTap ( event )
  print( "Left button was tapped!" )
  return true
end

local function onRightButtonTap ( event )
  print( "Right button was tapped!" )
  return true
end

local function onFireButtonTap ( event )
  print( "Fire button was tapped!" )
  return true
end

-- Attach event handlers to the buttons
leftButton:addEventListener( "tap", onLeftButtonTap )
rightButton:addEventListener( "tap", onRightButtonTap )
fireButton:addEventListener( "tap", onFireButtonTap )
