def sign_in_and_play
  visit('/')
  fill_in :player1_name, with: "Timmy"
  fill_in :player2_name, with: "Shaun"
  click_button "Submit"
end
