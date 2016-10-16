def sign_in_with_name
  visit '/'

  fill_in('name', with: 'Anna')
  click_button "Submit"
end
