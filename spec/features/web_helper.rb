def type_name_click
  visit('/')
  fill_in :player_name, with: "Jack"
  click_button "Submit"
end
