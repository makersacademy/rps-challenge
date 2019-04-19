def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Jordan'
  click_button 'Submit'
end
