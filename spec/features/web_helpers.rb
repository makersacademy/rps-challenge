def sign_in_and_play
  visit('/')
  fill_in("Player1", with: "Claire")
  click_button("Register")
end
