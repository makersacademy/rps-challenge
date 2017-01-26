def sign_in_and_play_single
  visit ('/')
  fill_in('player_1', with: 'James')
  click_button 'Submit'
end
