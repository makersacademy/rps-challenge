require_relative 'web_helper'

feature 'Test Page' do
  scenario 'home page confirms working' do
    test_page
    expect(page).to have_content('Test page working')
  end
end

feature 'Welcome Page' do
  scenario 'welcome page displays welcome content' do
    welcome
    expect(page).to have_content("Welcome to Rock Paper Scissors\nEnter Name:")
  end
end

feature 'Welcome Page' do
  scenario 'user logs in and enters their name' do
    login
    expect(page).to have_content('Daniel, pick your choice')
  end
end
   