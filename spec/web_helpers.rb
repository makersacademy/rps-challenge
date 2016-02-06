def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Matt'
  click_button 'ENTER'
end
