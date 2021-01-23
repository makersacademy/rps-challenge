def sign_in

  visit('/')
  click_button('One Player')
  fill_in("player_one", with: "Claude")
  click_on("Submit")

end
