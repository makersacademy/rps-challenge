def sign_in
  visit '/'
  fill_in :player_name, with: "Agata"
  click_button "Submit"
end
