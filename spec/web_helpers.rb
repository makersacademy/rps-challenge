def sign_in
  visit '/'
  fill_in('name', with: 'John')
  click_button('Play!')
end

def play_paper
  click_button('Pick weapon')
  click_button('Paper')
end

def play_rock
  click_button('Pick weapon')
  click_button('Rock')
end

def play_scissors
  click_button('Pick weapon')
  click_button('Scissors')
end
