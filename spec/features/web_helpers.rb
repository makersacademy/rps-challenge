def sign_in_and_play
  visit ('/')
  fill_in 'player_one', with: 'Jack'
  click_button 'submit'
end
