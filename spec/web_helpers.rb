def sign_in
  visit '/'
  fill_in('name', with: 'John')
  click_button('Play!')
end

def play_paper
  click_button('Get started >')
  click_button('Paper')
end

def play_paper_after_first_turn
  click_button('Next turn >')
  click_button('Paper')
end

def play_rock
  click_button('Get started >')
  click_button('Rock')
end

def play_scissors
  click_button('Get started >')
  click_button('Scissors')
end

def play_scissors_after_first_turn
  click_button('Next turn >')
  click_button('Scissors')
end
