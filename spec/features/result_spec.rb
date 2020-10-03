require './spec/spec_helper.rb'
require 'capybara/rspec'

feature 'Who won?' do
  it 'Displays the result' do
    visit('/')
    fill_in :name, with: 'Dexter'
    click_button 'Submit'
    click_button 'ROCK'
    expect(page).to have_content 'Dexter chose ROCK'
  end
end
