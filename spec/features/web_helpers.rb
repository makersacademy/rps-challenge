def sign_in_and_play
  visit('/')
  fill_in "name", with: "Yoda"
  choose "computer" 
  click_button
end
