def sign_in_with_name
  visit "/"
  fill_in "player_name", :with => "Chris"
  click_button "submit"
end
