def sign_in_and_play
  visit '/'
  fill_in 'player_1', with: 'Tron'
  click_button('Submit')
end
