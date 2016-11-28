def enter_name
  visit "/"
  fill_in :player_1_name, with:  "Simon"
  #fill_in :player_2_name, with:  "Jo"
  click_button("Submit")
end
