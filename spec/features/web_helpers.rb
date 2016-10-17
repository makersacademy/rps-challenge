def register
  visit "/"
  click_button "Register"
  fill_in "Username", :with => "Royston"
  fill_in "password", :with => "password"
  click_button "Submit"
end

def sign_in_and_play
  click_button "Sign in"
  fill_in "Username", :with => "Royston"
  fill_in "Password", :with => "password"
  click_button "Play"
end
