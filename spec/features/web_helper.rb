def sign_in_and_play
  visit "/"
  fill_in :player_name, with: "Ben"
  click_button "Submit"
end
