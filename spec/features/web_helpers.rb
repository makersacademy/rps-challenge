def sign_in_and_play
  visit('/')
  fill_in(:player_1, with: 'Pamela')
  click_button('Ready!')
end

def multiplay_sign_in_and_play
  visit('/')
  click_button('Multiplayer')
    fill_in(:player_1, with: 'Pamela')
    fill_in(:player_2, with: 'Pikachu')
    click_button('Ready!')
end