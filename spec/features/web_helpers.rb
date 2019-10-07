def sign_in
  visit '/'
  fill_in "name", with: "Will"
  click_button "Play!"
end
