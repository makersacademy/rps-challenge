feature 'home page' do
  scenario 'visiting home page' do
  visit ('/')
  expect(page).to have_content "Rock paper scissors"
  end
end
