def enter_name
  visit('/')
  fill_in :player_name, with: "Robert"
  click_button('Submit')
end