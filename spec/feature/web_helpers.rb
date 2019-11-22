def sign_in_and_play
  visit('/')
  fill_in "name", with: "Test Player"
  click_button "Submit"
end
