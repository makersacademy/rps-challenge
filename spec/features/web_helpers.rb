def sign_in_and_play
  visit('/')
  fill_in "name", with: "Yoda"
  click_button
end
