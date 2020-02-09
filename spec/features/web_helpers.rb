def sign_in_with_names
  visit('/')
  fill_in "Player 1", with: "Joe"
  fill_in "Player 2", with: "Haydon"
  click_button("Submit Names")
end