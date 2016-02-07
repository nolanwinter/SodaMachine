t = {}

function t.open()
  --displays the water screen
  --and sets its size and cordinates
  local group = display.newGroup()
  local water = display.newImage(group, "Images/WaterScreen.jpg" )
  water.x = 512; water.y = 384
  water.width = 1270; water.height = 768
  --sets a back button and assigns it to go back to the main screen
  local backButton = display.newRect( group, 200, 185, 250, 100 )
  backButton:setFillColor( 0, 0, 0.6, 0.01 )
  function backPress()
    mainScreen.open()
    group:removeSelf()
  end
  backButton:addEventListener( "tap", backPress )
end
return t