def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Jack'
  click_button 'Submit'
end
