def sign_in_and_play
  visit('/')
  fill_in(:username, with: 'Thrash')
  click_button('Lets Play')
end

def make_selection_rock
  sign_in_and_play
  visit('/plays')
  choose(:Rock)
  click_button('Lets Play')
end
