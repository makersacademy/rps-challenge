def sign_in(name)
  visit '/'
  fill_in "player1_name", :with => name
  click_button "Submit"
end
