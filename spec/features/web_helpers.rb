def sign_in_and_play
  visit "/"
  fill_in :player1, with: "Robert"
  click_button "Play"
end
