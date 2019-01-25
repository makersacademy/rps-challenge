def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Archie'
  click_button 'Play!'
end
