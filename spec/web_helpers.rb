  
def sign_in_and_play
  visit '/'
  fill_in 'player_name', with: 'Xavier'
  click_button 'Go!'
end