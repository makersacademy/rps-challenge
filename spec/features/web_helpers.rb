def user_inputs_name
  visit('/')
  fill_in :player_name, with: "Dave"
  click_button "Submit"
end
