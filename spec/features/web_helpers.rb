def sign_in
  visit("/")
  fill_in "name", with: "Matt Tea"
  click_button "Go!"
end