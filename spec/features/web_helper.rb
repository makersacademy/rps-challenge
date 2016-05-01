def sign_in
  visit '/'
  click_button "Start"
  fill_in :player_name, with: "Johnson"
  click_button "Submit"
end
