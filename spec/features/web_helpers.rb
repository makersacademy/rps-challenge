def sign_in_and_play
  visit '/'
  fill_in 'name', with: 'Liz'
  click_on 'Enter game'
end

def player_chooses_rock
  choose 'rock'
  click_on 'Play'
end
