def sign_in_and_play
  visit('/')
  fill_in(:player_name, with: 'Radu')
  click_button('Submit')
end

def make_choice
  sign_in_and_play
  choose('rock')
  click_button('Submit')
end
