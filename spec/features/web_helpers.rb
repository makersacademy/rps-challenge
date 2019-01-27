def single_sign_in
  visit('/')
  fill_in :player1_name, with: "Erin"
  click_button 'Go!'
end 
