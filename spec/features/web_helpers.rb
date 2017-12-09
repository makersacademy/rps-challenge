def sign_up_and_play
  visit('/')
  fill_in :player_name, with: 'Jim'
  click_button 'Submit'
end
