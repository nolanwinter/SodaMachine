t = {}

function t.open()
  --displays the filling screen
  --and sets its size and cordinates
  local group = display.newGroup()
  local filling = display.newImage( group, "Images/NowFillingScreen.jpg" )
  filling.x = 512; filling.y = 384
  filling.width = 1270; filling.height = 768
  function nextStep()
    sealingScreen.open()
    group:removeSelf()
  end
  local timer1 = timer.performWithDelay( 1500, nextStep )
end
return t