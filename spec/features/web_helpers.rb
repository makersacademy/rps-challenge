def sign_in_and_play
  visit("/")
  fill_in :player_name, with: "Holden Caulfield"
  click_button "Start Game"
end
