def sign_in_and_play
  visit('/')
  click_button('singleplayer')
  fill_in "username", with: "John"
  click_button "begin"
end