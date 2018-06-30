def sign_in_and_play
  visit('/')
  fill_in(:player1_name, with: 'Jenny')
  click_button("Let's Play!")
end
