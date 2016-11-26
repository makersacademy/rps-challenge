def sign
  visit('/')
  fill_in('name', with: 'A')
  expect(page).to have_content('A wins')
end
