def sign_in
  visit ('/')
  fill_in "player_name", :with => "Yuri"
  click_button "Submit name"
end
