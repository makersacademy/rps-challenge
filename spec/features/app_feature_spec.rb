require 'capybara/dsl'
require 'selenium-webdriver'

feature RPSServer do
  scenario 'client makes get request to root' do
    visit '/'
    expect(page).to have_content "Rock Paper Scissors"
  end
end
