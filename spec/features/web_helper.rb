def sign_in_and_play
  visit("/")
  fill_in("name", with: "Jo")
  click_button("begin")
end 
