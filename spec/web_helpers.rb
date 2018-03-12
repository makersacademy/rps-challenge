def sign_in_ai
  visit('/')
  click_button 'ai'
  fill_in 'player_1_name', with: 'Tom'
  click_button 'Submit player name'
end

def sign_in_multi
  visit('/')
  click_button 'multiplayer'
  fill_in 'player_1_name', with: 'Tom'
  fill_in 'player_2_name', with: 'Ant'
  click_button 'Submit player names'
end
