def sign_in_and_play_computer
  visit('/')
  fill_in :player_1_name, with: 'Emma'
  click_button 'Submit'
end

def choose_rock
  visit('/play')
  click_button 'Rock'
  expect(page).to have_content('You chose rock. What will computer choose?')
  click_button "Let's find out..."
end

def choose_paper
  visit('/play')
  click_button 'Paper'
  expect(page).to have_content('You chose paper. What will computer choose?')
  click_button "Let's find out..."
end

def choose_scissors
  visit('/play')
  click_button 'Scissors'
  expect(page).to have_content('You chose scissors. What will computer choose?')
  click_button "Let's find out..."
end
