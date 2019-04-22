def sign_in_and_submit
  visit '/'
  fill_in :player_name, with: "Hannah"
  click_button "Submit"
end
