require 'capybara/rspec'
require_relative '../../app'
Capybara.app = RPS

feature 'enter player name' do
  before do
    visit('/')
  end

  scenario 'homepage requests users to input their name' do
    expect(page).to have_content "Enter your names below to begin playing"
  end

  scenario 'homepage has a Player 1 name field' do
    expect(page.has_field?('name_1')).to be_truthy
  end
  
  scenario 'homepage has a Player 2 name field' do
    expect(page.has_field?('name_2')).to be_truthy
  end

  scenario 'homepage has a submit button that can be clicked' do
    find_button("Submit").click
  end
end
