def sign_into_game
  visit('/')
  expect(page).to have_content 'Rock paper scissors'
  expect(page).to have_content 'Star Wars edition!'
  expect(page).to have_content 'Sign in to play'
  fill_in :player1_name, with: 'Born2Win'
  click_button 'Game on!'
end

def play_page_content
  expect(page).to have_content 'Born2Win vs. Computer'
  expect(page).to have_content 'Born2Win: make your choice.'
end

def make_selection_rock
  fill_in :p1_choice, with: 'rock'
  click_button 'Decide your fate'
end

def make_selection_paper
  fill_in :p1_choice, with: 'paper'
  click_button 'Decide your fate'
end

def make_selection_scissors
  fill_in :p1_choice, with: 'scissors'
  click_button 'Decide your fate'
end
