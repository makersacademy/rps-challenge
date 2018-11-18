def sign_in
  visit '/'
  click_button '1 Player'
  fill_in 'player_1', with: 'Ajay'
  click_button 'Submit'
end

def sign_in_two_player
  visit '/'
  click_button "2 Player"
  fill_in 'player_1', with: 'Ryu'
  fill_in 'player_2', with: 'Ken'
  click_button 'Submit'
end

def choose_scissors
  choose 'Scissors'
  click_button "Submit"
end

def choose_scissors_then_rock
  choose 'Scissors'
  click_button "Submit"
  choose 'Rock'
  click_button "Submit"
end
