def user_inputs_name
  visit('/')
  fill_in :player_name, with: "Dave"
  click_button "Submit"
end

def user_chooses_weapon
  user_inputs_name
  fill_in :player_weapon, with: "rock"
  click_button "Submit"
end
