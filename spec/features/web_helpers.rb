def sign_in_and_play
  visit('/')
  fill_in :name, with: 'Crooked Hilary'
  click_button "Let's Play!"
end

def choose_scissors
  click_button 'Scissors'
end
