def register
  visit '/'
  fill_in :name, with: 'Liv'
  click_button 'Register'
  expect(page).to have_content "Get ready to play Liv!"
end
