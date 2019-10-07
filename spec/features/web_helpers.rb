def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'James'
  click_button 'Lets Play!'
end
