def sign_in_and_play
  visit '/'
  fill_in 'player_1', with: 'Marco'
  fill_in 'player_2', with: 'Queen Elizabeth'
  click_on 'Play'
end

def click_rock(n)
  click_on "Rock#{n}"
end

def click_paper(n)
  click_on "Paper#{n}"
end

def click_scissor(n)
  click_on "Scissor#{n}"
end
