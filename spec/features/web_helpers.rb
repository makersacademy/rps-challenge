def sign_in_and_play
  visit '/'
  fill_in('Player1', with: 'Frodo')
  click_button('Submit players')
end
