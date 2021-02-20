def sign_up_and_go
  visit '/'
  fill_in :name, with: 'Frank'
  click_button 'Go!'
end
