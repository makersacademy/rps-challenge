module RPSImages

  IMAGES = {
    'rock'=>"http://www.clker.com/cliparts/0/b/8/9/1216137609217389073Angelo_Gemmi_stone.svg.med.png",
    'paper'=>"http://www.clker.com/cliparts/6/5/d/d/12408471771447666572PrinterKiller_Paper.svg.med.png",
    'scissors'=> "http://www.clker.com/cliparts/d/b/d/6/11949839942140777322scissors.svg.med.png"
  }

  def get_image(rps)
    '<img src=' + IMAGES[rps] + ' width="200" height="260">'
  end

end
