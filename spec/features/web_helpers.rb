def sign_in_and_play
  visit '/'
  fill_in("player", with: "player1")
  click_button ('register')
end
