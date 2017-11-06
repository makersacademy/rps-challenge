def sign_in_and_play
  visit('/')
  fill_in :player_1, with: "Shoto"
  click_button("Submit")
end
