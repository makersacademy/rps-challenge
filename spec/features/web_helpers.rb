def sign_in_and_play 
  visit('/')
  fill_in(:player_name, with: "Cam")
  click_button("Submit")
end
