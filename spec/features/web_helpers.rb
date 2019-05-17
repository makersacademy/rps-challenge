def sign_in
  visit('/')
  fill_in :player_name, with: "Jazz"
  click_button "Play!"
end
