def sign_in_and_play
  visit '/'
  fill_in("name", with: "dumb")
  click_button("Submit")
end
