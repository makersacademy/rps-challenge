require 'capybara/rspec'

feature 'testing homepage' do
  scenario 'it can call the homepage' do
    visit '/'
    expect(page).to have_content 'Welcome to Rock/Paper/Scissors'
  end
end
