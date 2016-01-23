t = {}

function t.open()
  --displays the cola screen
  --and sets its size and cordinates
  local group = display.newGroup()
  local cola = display.newImage(group, "Images/ColaScreen.jpg" )
  cola.x = 512; cola.y = 384
  cola.width = 1270; cola.height = 768
  --sets a back button and assigns it to go back to the main screen
  local backButton = display.newRect( group, 235, 190, 250, 100 )
  backButton:setFillColor( 0, 0, 0.6, 0.01 )
  function backPress()
    mainScreen.open()
    group:removeSelf()
  end
  backButton:addEventListener( "tap", backPress )
end
return t