def sign_in
  visit ("/")
  fill_in("player_1", :with => "Courtney")
  fill_in("player_2", :with => "Russell")
  click_button("Submit")
end
