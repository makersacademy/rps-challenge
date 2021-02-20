def sign_in_and_play
  visit '/'
    fill_in(:player1, with: 'Nico')
    click_button('Submit')
end
