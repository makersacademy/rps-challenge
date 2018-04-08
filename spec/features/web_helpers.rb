def sign_in_and_play
  visit('/')
  fill_in :player1, with: "Gadiza"
  click_button "Submit"
end
