def sign_in_and_play
  visit('/')
  fill_in('player1_name', with: "Player1")
  fill_in('player2_name', with: "Player2")
  click_button("RPS")
end
