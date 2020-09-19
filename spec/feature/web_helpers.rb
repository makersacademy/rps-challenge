def sign_in_submit
  visit '/'
  fill_in('Name', with: "Sam")
  click_on('Start single player!')
end