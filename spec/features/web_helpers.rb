def add_name_start
  visit("/")
  fill_in "player_name", with: "Patrick"
  click_button('Start')
end