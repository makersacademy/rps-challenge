def sign_in_and_play
  visit('/')
  fill_in :name, with: "Lewis"
  click_button("START")
end
