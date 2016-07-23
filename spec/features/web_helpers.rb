def enter_player_name
  visit("/")
  fill_in :player_name, with: "Sophie"
  click_button("Submit")
end
