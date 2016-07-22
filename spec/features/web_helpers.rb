def sign_in_and_play
  visit ('/')
  fill_in 'player_one', with: 'Jack'
  fill_in 'player_two', with: 'Richard'
  click_button 'submit'
end
