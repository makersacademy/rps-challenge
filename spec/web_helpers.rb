def sign_in
  visit "/"
  fill_in "name", with: "Guillaume"
  click_on "Start the game!"
end