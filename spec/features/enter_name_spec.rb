require 'capybara/dsl'
require 'selenium-webdriver'

feature 'Entering Names' do
  before do
    include Capybara::DSL
    Capybara.default_driver = :selenium
  end

  scenario 'can enter name' do
    visit('/')
    fill_in('player_name', with: 'Rebecca')
    click_button('Go!')
    expect(page).to have_content('Rebecca vs. The Computer')
  end
end