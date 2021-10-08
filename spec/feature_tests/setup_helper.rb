def enter_name_and_ok
  visit('/')
  fill_in :player_name, with: "Kostas"
  click_button "OK"
end