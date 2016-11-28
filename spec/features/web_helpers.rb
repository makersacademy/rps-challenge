def sign_in_and_play
  visit '/'
  fill_in "Player1", :with => "James"
  click_button('Fight')
end

def p1_chose_rock
  sign_in_and_play
  click_button('Rock')
end

def p1_chose_paper
  sign_in_and_play
  click_button('Paper')
end

def p1_chose_scissors
  sign_in_and_play
  click_button('Scissors')
end
