def sign_in_and_play
  visit('/')
  fill_in('player_one', with: 'Mick')
  fill_in('player_two', with: 'Keith')
  click_on('Submit')
end
