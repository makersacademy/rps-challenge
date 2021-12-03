require 'capybara/rspec'
require_relative '../../app'
Capybara.app = RPS

feature 'enter player name' do
  before do
    visit('/')
  end

  scenario 'homepage requests user to input their name' do
    expect(page).to have_content "Enter your name to begin playing"
  end

  scenario 'homepage has a name field' do
    expect(page.has_field?('name')).to be_truthy
  end

  
end