def sign_in_and_play
  visit "/"
  fill_in "player_name", with: "Andrea"
  click_button "Enter your name"
end
