def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Dave'
  fill_in :computer, with: 'Computer'
  click_button 'submit'
end
