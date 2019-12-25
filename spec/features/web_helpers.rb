def sign_in 
  visit '/'
  fill_in('name', with: 'Jimmy')
  click_on('Submit')
end
