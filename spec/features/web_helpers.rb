def sign_in_with_dave
  visit '/'
  fill_in :player1, with: "Dave"
  click_button 'okay'
end

def go_to_draw
  sign_in_with_dave
  srand(2) #P2 chooses rock
  click_button 'rock'
end

def go_to_win
  sign_in_with_dave
  srand(1)
  click_button "scissors"
end
