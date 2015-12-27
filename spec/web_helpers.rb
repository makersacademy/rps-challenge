def sign_in_and_play_computer
  visit('/')
  fill_in :player_1_name, with: 'Emma'
  choose('computer_player')
  click_button 'Play'
end

def sign_in_and_play_human
  visit('/')
  fill_in :player_1_name, with: 'Emma'
  choose('real_person')
  fill_in :player_2_name, with: 'Tobit'
  click_button 'Play'
end

def choose_rock_vs_computer
  visit('/play')
  click_button 'Rock'
  expect(page).to have_content('You chose rock. What will computer choose?')
  click_button "Let's find out..."
end

def choose_paper_vs_computer
  visit('/play')
  click_button 'Paper'
  expect(page).to have_content('You chose paper. What will computer choose?')
  click_button "Let's find out..."
end

def choose_scissors_vs_computer
  visit('/play')
  click_button 'Scissors'
  expect(page).to have_content('You chose scissors. What will computer choose?')
  click_button "Let's find out..."
end

def choose_rock_vs_human
  visit('/play')
  click_button 'Rock'
  expect(page).to have_content("It's Tobit's turn")
end

def choose_paper_vs_human
  visit('/play')
  click_button 'Paper'
  expect(page).to have_content("It's Tobit's turn")
end

def choose_scissors_vs_human
  visit('/play')
  click_button 'Scissors'
  expect(page).to have_content("It's Tobit's turn")
end

def player_2_chooses_rock
  click_button 'Rock'
end

def player_2_chooses_paper
  click_button 'Paper'
end

def player_2_chooses_scissors
  click_button 'Scissors'
end
