def sign_in_and_play
  visit ('/')
  fill_in :player_name, with: 'Ali'
  click_button 'Submit'
end