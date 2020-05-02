def sign_in_and_play
  visit ("/")
  fill_in :name, with: "Kitty"
  click_button "Play!"
end
