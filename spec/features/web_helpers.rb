def play_game
  visit '/'
  click_button 'Start Game'
end

def enter_name
  play_game
  fill_in(:name, with: "Dog")
  click_button "Submit"
end

def play_rock
  enter_name
  click_button "Rock"
end
