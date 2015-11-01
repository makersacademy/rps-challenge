def sign_in_and_play
  visit('/')
  fill_in('username', with: "Andrew")
  click_button("Submit")
end
