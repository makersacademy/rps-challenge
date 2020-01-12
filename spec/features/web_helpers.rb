def sign_in_and_play
  visit('/')
  fill_in :name, with: "David"
  click_button "Let's Play!"
end
