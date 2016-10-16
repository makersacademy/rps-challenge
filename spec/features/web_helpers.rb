def single_player_login
  visit('/')
  click_button 'Single Player'
  fill_in :player_name, with: 'Thousand fingers'
  click_button 'Submit'
end
