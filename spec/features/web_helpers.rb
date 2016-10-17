def sign_in_and_play
  visit "/"
  fill_in "player_name", with: "Rory"
  click_button "OK"
end
