def sign_in_and_play
  visit('/')
  fill_in('player', with: 'Mary')
  click_button('Enter game')
end
