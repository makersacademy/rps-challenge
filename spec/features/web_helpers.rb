def register_name
  visit('/')
  fill_in :player_name, with: "Gianluca"
  click_button "Register"
end
