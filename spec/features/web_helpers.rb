def submit_name
  visit '/'
  fill_in 'name', with: 'Scooby Doo'
  click_button('Submit')
end
