def register
  visit "/"
  click_button "Register"
  fill_in "First name", :with => "Royston"
  fill_in "Last name", :with => "Henson"
  click_button "Submit"
end
