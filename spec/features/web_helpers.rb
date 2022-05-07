def sign_in_and_submit_name
  visit '/'
  fill_in :name, with: 'Jimmy'
  click_button 'Submit'
end