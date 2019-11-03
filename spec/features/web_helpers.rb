def enter_name_and_start
  visit('/')
  fill_in "player_name", with: "Rocky"
  click_button "Let's go!"
end

def choose_rock
  enter_name_and_start
  click_button "Rock"
end
