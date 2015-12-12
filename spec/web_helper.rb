

def sign_in_and_play
  visit 'http://localhost:9292/'
  fill_in('name', with: 'Tony')
  click_button('Start Game')
end
