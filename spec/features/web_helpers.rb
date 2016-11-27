def sign_in
  visit ('/')
  fill_in 'name', :with => 'Tom'
  click_button "Submit"
end
