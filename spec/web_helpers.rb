def sign_up
  visit ("/")
  fill_in :player_name, with: "Ben"
  click_button "Submit"
end
