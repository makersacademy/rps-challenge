def sign_in
  visit ("/")
  fill_in("Player", :with => "Courtney")
  click_button("Submit")
end 
