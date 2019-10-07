def single_sign_in
  visit('/')
  fill_in :player1_name, with: "Erin"
  click_button 'Go!'
end 

def double_sign_in
  visit('/')
  fill_in :player1_name, with: "Erin"
  fill_in :player2_name, with: "Amanda"
  click_button 'Go!'
end
