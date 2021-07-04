def sign_in
  visit("/")
  fill_in "name", with: "Bob"
  click_button("Register")
end 