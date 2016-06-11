def choose_rps
  visit('/play')
  ["rock", "paper", "scissor"].each { |item| 
    find(:css, "img\##{item}").click
  }
end