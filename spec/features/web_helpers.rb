def sign_in_and_submit
  visit '/'
  fill_in('name', with: "An")
  click_button('submit')
end
