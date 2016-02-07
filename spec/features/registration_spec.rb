
require 'capybara/dsl'
require 'web_helpers'

feature 'Enter name' do
  scenario 'submitting names' do
    browser_view
    visit('/')
    fill_in :player_name, with: 'Valentina'
    click_button 'Submit'
    expect(page).to have_content 'Valentina, you are registered!'
  end
end
