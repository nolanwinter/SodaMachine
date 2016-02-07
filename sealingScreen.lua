t = {}

function t.open()
  --displays the sealing screen
  --and sets its size and cordinates
  local group = display.newGroup()
  local sealing = display.newImage( group, "Images/SealingScreen.jpg" )
  sealing.x = 512; sealing.y = 384
  sealing.width = 1270; sealing.height = 786
  function nextStep()
    mainScreen.open()
    group:removeSelf() 
  end
  local timer1 = timer.performWithDelay( 1500, nextStep )
end
return t