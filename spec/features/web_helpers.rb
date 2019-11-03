def sign_in_and_play
  visit '/'
  fill_in('player_1', with: 'Odin')
  click_button 'Lets GO!'
end
