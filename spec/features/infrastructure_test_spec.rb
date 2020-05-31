

feature 'Infrastructure Test' do
 scenario 'Displays welcome message' do
  visit('/')
  expect(page).to have_content('Welcome to Rock Paper Scissors')
 end
end