def sign_in
  visit("/")
  fill_in "name",	with: "Leo"
  click_button("Register")
end
