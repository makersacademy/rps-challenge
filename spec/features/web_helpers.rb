def sign_in_and_play
  visit('/')
  fill_in('player_one_name', with: 'Jill')
  fill_in('player_two_name', with: 'Jack')
  click_button('Submit')
end

def choose_rock_and_scissors
  click_button('Rock')
  click_button('Submit')
  click_button('Scissors')
  click_button('Submit')
end

