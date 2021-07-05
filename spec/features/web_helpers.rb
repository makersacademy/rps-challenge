def sign_in_and_play
  visit '/'
  fill_in "Player name", with: "Hannah"
  click_button "GO!"
end
