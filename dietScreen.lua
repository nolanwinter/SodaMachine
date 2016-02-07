t = {}

function t.open()
  --displays the diet screen
  --and sets its size and cordinates
  local group = display.newGroup()
  local diet = display.newImage(group, "Images/DietSodaScreen.jpg" )
  diet.x = 512; diet.y = 384
  diet.width = 1270; diet.height = 768
  --sets a back button and assigns it to go back to the main screen
  local backButton = display.newRect( group, 195, 200, 270, 100 )
  backButton:setFillColor( 0, 0, 0.6, 0.01 )
  function backPress()
    mainScreen.open()
    group:removeSelf()
  end
  backButton:addEventListener( "tap", backPress )
end
return t