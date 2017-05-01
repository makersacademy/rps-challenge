
feature 'User can select an option' do
  scenario 'user chooses paper' do
  register
  click_button("Submit your choice")
  expect(page).to have_content 'You chose'
  end
end
