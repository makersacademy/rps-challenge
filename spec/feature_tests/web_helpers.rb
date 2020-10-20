def sign_in_and_play
  visit '/'
  fill_in('player1_name', with: 'Isaac')
  click_button('Submit')
end
