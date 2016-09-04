def submit_name
  visit('/')
  click_button "Single-player"
  fill_in :name, with: "Rosie"
  click_button "Play!"
end

def player_choose_rock
  fill_in :weapon, with: "rock"
  click_button "Submit"
end
