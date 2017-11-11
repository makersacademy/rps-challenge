def sign_in_and_play
  visit '/'
  fill_in 'player', with: 'Marco'
  click_on 'Play'
end

def click_rock
  click_on 'Rock'
end

def click_paper
  click_on 'Paper'
end

def click_scissor
  click_on 'Scissor'
end
