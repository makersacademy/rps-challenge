def register
  visit '/'
  fill_in :marketeer_name, with: 'Liv'
  click_button 'Register'
  expect(page).to have_content "Welcome Liv!"
end
