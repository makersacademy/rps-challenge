def begin_game
  visit('/')
  fill_in('name', with: 'Matt')
  click_button('Submit')
end

def choose_rock
  choose 'rock'
  click_button 'Submit'
end
