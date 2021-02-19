def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Max'
  click_button 'submit player name'
end
