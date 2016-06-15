def choose_rps
  visit('/play')
  arr= ["rock", "paper", "scissors"]
  arr.each {|item| find(:css, "img\##{item}").click}
end