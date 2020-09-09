def register
  visit '/'
  fill_in 'name', with: "Mark Eteer"
  click_button 'Submit'
end 
