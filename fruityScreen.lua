t = {}

function t.open()
  --displays the fruity screen
  --and sets its size and cordinates
  local group = display.newGroup()
  local fruity = display.newImage(group, "Images/FruityScreen.jpg" )
  fruity.x = 512; fruity.y = 384
  fruity.width = 1270; fruity.height = 768
  --sets a back button and assigns it to go back to the main screen
  local backButton = display.newRect( group, 190, 220, 270, 100 )
  backButton:setFillColor( 0, 0, 0.6, 0.01 )
  function backPress()
    mainScreen.open()
    group:removeSelf()
  end
  backButton:addEventListener( "tap", backPress )
end
return t