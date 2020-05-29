def sign_in_process
  visit("/")
  fill_in "player", with: "Bene"
  click_button("Start")
end 
