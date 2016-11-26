def sign_in_with_dave
  visit '/'
  fill_in :player1, with: "Dave"
  click_button 'okay'
end

def go_to_draw
  sign_in_with_dave
  srand(1) #P2 chooses paper
  click_button 'paper'
end

def go_to_win
  sign_in_with_dave
  srand(1)
  click_button "scissors"
end
