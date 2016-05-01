def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Kanye'
  fill_in :weapon, with: 'Rock'
  click_button 'Submit'
end
