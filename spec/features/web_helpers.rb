def sign_in_and_play
  visit '/'
  fill_in(:player1, with: 'George')
  fill_in(:player2, with: 'Charles')
  click_button('Submit')
end

def choose_options
  fill_in(:choice, with: 'r')
  click_button('Confirm')
end
