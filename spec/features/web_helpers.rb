def sign_in_and_play
  visit '/'
  fill_in 'player_name', with: 'Marek'
  click_button 'Start Game'
end

def sign_in_and_choose_rock
  visit '/'
  fill_in 'player_name', with: 'Marek'
  click_button 'Start Game'
  click_button 'Rock'
end
