def enter_name
  visit('/')
  fill_in :name, with: "Sam"
  click_button("Enter name")
end

def enter_name_and_start_game
  enter_name
  click_button("Start game")
end
