t = {}

function t.open()
  --displays the sanitizing screen
  --and sets its size and cordinates
  local group = display.newGroup()
  local sanitize = display.newImage( group, "Images/SanitizingScreen.jpg" )
  sanitize.x = 512; sanitize.y = 384
  sanitize.width = 1270; sanitize.height = 768
  function nextStep()
    fillingScreen.open()
    group:removeSelf()
  end
  local timer1 = timer.performWithDelay( 1500, nextStep )
end
return t