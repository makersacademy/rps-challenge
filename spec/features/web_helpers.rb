def sign_in_and_start
  visit('/')
  fill_in("username", with: "Van")
  click_button("Start Game")
end
