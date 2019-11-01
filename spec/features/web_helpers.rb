def log_names
  visit("/")
  fill_in :player_1_name, with: "Bowie"
  click_button "Submit"
end
