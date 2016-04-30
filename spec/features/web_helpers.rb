def sign_in
  visit "/"
  fill_in "name", :with => "Nick"
  click_button"Play"
end
