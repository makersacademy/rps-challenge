def sign_in_and_play
  visit '/'
  fill_in :player_name, with: 'Dwayne Johnson'
  click_button 'Play!'
end
