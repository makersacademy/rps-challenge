require "capybara/rspec"
require_relative "../../lib/app"

feature 'testing infrastructure' do
  scenario 'can run app load index' do
    visit '/'
    expect(page).to have_content 'Welcome to Rock/Paper/Scissors'
  end
end
