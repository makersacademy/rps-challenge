def sign_in
  visit('/')
  fill_in "player_name", :with => "Josh"
  click_button "submit"
end