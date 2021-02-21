def sign_in_and_play
  visit '/'
    fill_in(:player1, with: 'Nico')
    click_button('Submit')
end

def make_a_choice
  fill_in(:choice1, with: 'rock')
  click_button("Let's play!")
end
