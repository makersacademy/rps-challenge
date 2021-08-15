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

def two_player_game_first_player_chooses_rock
  visit('/')
  fill_in 'name', with: 'Ed'
  fill_in 'name2', with: 'Prune'
  click_button("Let's Play!")
  choose 'Rock'
  click_button 'Confirm Choice'
end

def two_player_game_drawn
  two_player_game_first_player_chooses_rock
  choose 'Rock'
  click_button('Confirm Choice')
end

def computer_weapon
  {
    paper: 1,
    rock: 2,
    scissors: 5
  }
end
