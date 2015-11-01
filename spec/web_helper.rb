def sign_in_and_play
  visit('/')
  fill_in(:player_name, with: 'Radu')
  click_button('Submit')
end

def make_choice(choice)
  sign_in_and_play
  choose(choice)
  click_button('Submit')
end
