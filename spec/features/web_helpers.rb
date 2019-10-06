def sign_in_and_play
  visit('/')
    fill_in(:player_1, with: 'Pamela')
    click_button('Ready!')
end