def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Chris'
  click_button 'Begin'
end
