def sign_in
  visit('/')
  fill_in :name, with: "Erin"
  click_button 'Go!'
end 
