require './app'

feature 'Application load' do
  scenario 'Root route is defined and display welcome message' do
    visit '/'
    expect(page).to have_content "Let's play!"
  end
end
