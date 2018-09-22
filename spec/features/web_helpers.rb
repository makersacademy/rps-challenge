def sign_in_and_play
  visit('/')
  fill_in(:name, with: 'Jon')
  click_button('Go!')
end

def make_choice(choice)
  choose(choice)
  click_button('Go!')
end
