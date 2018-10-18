def start_single_player
  visit '/'
  click_button 'Single Player'
end

def start_multiplayer
  visit '/'
  click_button 'Multiplayer'
end

def enter_single_name
  fill_in(:name_one, with: "Dog")
  click_button "Submit"
end

def enter_multiple_names
  fill_in(:name_one, with: "Dog")
  fill_in(:name_two, with: "Cat")
  click_button "Submit"
end
