def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Dave'
  fill_in :computer_name, with: 'Deep Blue'
  click_button 'Submit'
end
