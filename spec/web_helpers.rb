def sign_in
  visit '/'
  fill_in('name', with: 'John the rockiest paper scissor')
  click_button('Submit')
end

def choose_rock
  sign_in
  choose('choice', option: 'Rock')
  click_button('Submit')
end

def choose_paper
  sign_in
  choose('choice', option: 'Paper')
  click_button('Submit')
end

def choose_scissors
  sign_in
  choose('choice', option: 'Scissors')
  click_button('Submit')
end
