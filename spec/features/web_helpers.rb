def sign_in
  visit('/')
    fill_in('name', with: 'Chris')
    click_button 'Submit'
end