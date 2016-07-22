def sign_in
  visit ('/')
  fill_in "players_name", with: "Pip"
  click_button "Submit!"
end
