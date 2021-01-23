require './spec/spec_helper.rb'
require 'capybara/rspec'

feature 'Enter name' do
  it 'Submits the name' do
    visit('/')
    fill_in :name, with: 'Dexter'
    click_button 'Submit'
    expect(page).to have_content 'Dexter'
  end
end
