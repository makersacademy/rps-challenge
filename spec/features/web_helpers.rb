def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'David'
  click_button 'Submit'
end
