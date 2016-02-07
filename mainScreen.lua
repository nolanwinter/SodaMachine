t = {}

function t.open()
  --displays the flavors screen
  --and sets its size and cordinates
  local group = display.newGroup()
  local flavors = display.newImage(group, "Images/SodaFlavors2016.jpg" )
  flavors.x = 512; flavors.y = 384
  flavors.width = 1270; flavors.height = 768
  --makes a button over the rootbeer circle and gives it an event listener
  local rootbeerButton = display.newRect( group, 450, 575, 240, 255 )
  rootbeerButton:setFillColor( 0, 0, 0.6, 0.01 )
  function rootbeerPress()
    rootbeerScreen.open()
    group:removeSelf()
  end
  rootbeerButton:addEventListener( "tap", rootbeerPress )
  --makes a button over the cola circle and gives it an event listener
  local colaButton = display.newRect( group, 470, 295, 240, 255 )
  colaButton:setFillColor( 0, 0, 0.6, 0.01 )
  function colaPress()
    colaScreen.open()
    group:removeSelf()
  end
  colaButton:addEventListener( "tap", colaPress )
  --makes a button over the fruity circle and gives it an event listener
  local fruityButton = display.newRect( group, 160, 485, 240, 255 )
  fruityButton:setFillColor( 0, 0, 0.6, 0.01 )
  function fruityPress()
    fruityScreen.open()
    group:removeSelf()
  end
  fruityButton:addEventListener( "tap", fruityPress )
   --makes a button over the diet circle and gives it an event listener
  local dietButton = display.newRect( group, 765, 535, 240, 255 )
  dietButton:setFillColor( 0, 0, 0.6, 0.01 )
  function dietPress()
    dietScreen.open()
    group:removeSelf()
  end
  dietButton:addEventListener( "tap", dietPress )
   --makes a button over the water circle and gives it an event listener
  local waterButton = display.newRect( group, 765, 260, 240, 255 )
  waterButton:setFillColor( 0, 0, 0.6, 0.01 )
  function waterPress()
    waterScreen.open()
    group:removeSelf()
  end
  waterButton:addEventListener( "tap", waterPress )
end
return t