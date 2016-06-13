def choose_rps
  visit('/play')
  ["rock", "paper", "scissors"].each { |item| 
    find(:css, "img\##{item}").click
  }
end