def sign_in_and_play_vs_computer(seed = nil)
  srand(computer_weapon[seed]) if seed != nil
  visit('/')
  fill_in 'name', with: 'Ed'
  click_button("Let's Play!")
end

def p1_chooses_rock
  choose 'Rock'
  click_button 'Confirm Choice'
end

def p1_signs_in_chooses_rock_vs_computer(seed = :paper)
  sign_in_and_play_vs_computer(seed)
  p1_chooses_rock
end

def computer_weapon
  {
    paper: 1,
    rock: 2,
    scissors: 5
  }
end
