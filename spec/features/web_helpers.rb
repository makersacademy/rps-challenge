def sign_in_with_rock_and_play
  visit '/'
  fill_in :player_1_name, with: 'Bob'
  click_button 'Submit'
  fill_in :weapon_choice, with: 'Rock'
  click_button 'Submit'
  click_button 'Fight'
end
