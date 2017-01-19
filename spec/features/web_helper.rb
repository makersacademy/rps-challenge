def sign_in
  visit ("/")
  fill_in("player", :with => "Courtney")
  click_button("Submit")
end
