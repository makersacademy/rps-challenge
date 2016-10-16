def register
  visit "/"
  click_button "Register"
  fill_in "Username", :with => "Royston"
  fill_in "password", :with => "password"
  click_button "Submit"
end
