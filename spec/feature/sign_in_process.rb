def sign_in_process
  visit("/")
  fill_in "player_name", with: "Bene"
  click_button("Start")
end
