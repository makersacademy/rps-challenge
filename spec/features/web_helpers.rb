def sign_in_and_play
  visit('/')
  fill_in :name, with: 'Ana'
  click_button 'Play'
end

def click_rock
  choose'rock'
  click_button 'Play'
end

def click_paper
  choose'paper'
  click_button 'Play'
end

def click_scissors
  choose'scissors'
  click_button 'Play'
end
