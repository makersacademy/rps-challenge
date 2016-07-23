def sign_in_and_play
  visit "/"

  fill_in :player1_name, with: "Frankie"
  fill_in :player2_name, with: "RJ"
  click_button "Let's Play!"
end
