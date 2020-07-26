def homepage
  visit('/')
end

def homepage_sign_in
  visit('/')
  fill_in('username_1', with: 'Daniel')
  click_button 'Login'
end

def change_turns
  click_button 'Change turns'
end

def select_rock
  click_button 'Rock'
end

def select_paper
  click_button 'Paper'
end

def select_scissors
  click_button 'Scissors'
end

