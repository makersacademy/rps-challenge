def enter_name_and_play
  visit "/"
  fill_in :player_name, with: "Julie"
  click_button "Submit"
end
