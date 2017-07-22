def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Antoine'
  click_button 'Submit'
end
