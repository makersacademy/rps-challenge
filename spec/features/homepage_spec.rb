require './app/rps_web.rb'
require 'capybara-screenshot/rspec'
require 'capybara/rspec'

RSpec.feature "Home page", type: :feature do
  scenario "it says hello world" do
    visit "/"
    expect(page).to have_text("Hello, world!")
    save_and_open_page
  end
end
