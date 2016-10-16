def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Master Romshambollah'
  click_button 'Submit'
end
