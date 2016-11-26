def sign_in_and_submit_name
  visit('/')
  fill_in('name', with: 'A')
  click_button('Submit')
end
