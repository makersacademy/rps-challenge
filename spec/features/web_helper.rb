def sign_in
  visit('/')
  fill_in("player", with: "Kevin")
  click_button("Enter")
end
