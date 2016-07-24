def sign_in
  visit ('/')
  fill_in :player_name, with: "Adam"
  click_button "Submit"
end
