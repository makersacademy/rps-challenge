def sign_in_and_play
  visit("/")
  fill_in :player_name, with: "Sam"
  click_button "Play"
end
