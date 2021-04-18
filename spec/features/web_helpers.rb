def login_and_play
  visit("/")
  fill_in "name", with: "Mike"
  click_button "Let's play!"
end
