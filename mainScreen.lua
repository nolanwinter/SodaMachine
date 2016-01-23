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
  rootbeerButton:setFillColor( 0, 0, 0.6, 0.2 )
  function rootbeerPress()
    rootbeerScreen.open()
    group:removeSelf()
  end
  rootbeerButton:addEventListener( "tap", rootbeerPress )
   --makes a button over the cola circle and gives it an event listener
  local colaButton = display.newRect( group, 470, 295, 240, 255 )
  colaButton:setFillColor( 0, 0, 0.6, 0.2 )
  function colaPress()
    colaScreen.open()
    group:removeSelf()
  end
  colaButton:addEventListener( "tap", colaPress )
end
return t