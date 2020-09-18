def sign_in_submit
  visit '/'
    fill_in('Name', with: "Sam")
end