t = {}

function t.open()
  --displays the rootbeer screen
  --and sets its size and cordinates
  local group = display.newGroup()
  local rootbeer = display.newImage(group, "Images/RootBeerScreen.jpg" )
  rootbeer.x = 512; rootbeer.y = 384
  rootbeer.width = 1270; rootbeer.height = 768
  --sets a back button and assigns it to go back to the main screen
  local backButton = display.newRect( group, 190, 190, 250, 100 )
  backButton:setFillColor( 0, 0, 0.6, 0.01 )
  function backPress()
    mainScreen.open()
    group:removeSelf()
  end
  backButton:addEventListener( "tap", backPress )
  local rootbeerButton = display.newRect( group, 300, 430, 240, 255 )
  rootbeerButton:setFillColor( 0, 0, 0.6, 0.01 )
  function rootbeerPress()
    sanitizingScreen.open()
    group:removeSelf()
  end
  rootbeerButton:addEventListener( "tap", rootbeerPress )
  local vanillaButton = display.newRect( group, 625, 430, 240, 255 )
  vanillaButton:setFillColor( 0, 0, 0.6, 0.01 )
  function vanillaPress()
    sanitizingScreen.open()
    group:removeSelf()
  end
  vanillaButton:addEventListener( "tap", vanillaPress )
end
return t