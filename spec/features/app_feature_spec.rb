require 'capybara/dsl'
require 'selenium-webdriver'

feature RPSServer do
  scenario 'client makes get request to root' do
    visit '/'
    expect(page).to have_content 'Rock Paper Scissors'
  end

  scenario 'client enters name at root and clicks submit' do
    visit_root_sign_in_as_habakkuk
    expect(page).to have_content 'Habakkuk'
  end
end
