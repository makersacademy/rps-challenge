require_relative '../../app.rb'

feature 'index page loads' do
  scenario 'user navigates to page' do
    visit('/')
    expect(page).to have_content 'Hello, world!'
  end
end
