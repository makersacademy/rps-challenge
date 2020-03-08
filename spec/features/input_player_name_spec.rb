require './app/app.rb'
require 'spec_helper'
feature 'inputs player names' do
  scenario 'will show me a form to submit my name' do
    visit '/'
    expect(page).to have_content("Please enter your battle name!")
  end
  
  scenario 'will show me my name when I click submit' do
    visit '/'
    fill_in :name, with: 'Stephan'
    click_button 'submit'
    expect(page).to have_content 'Good day master Stephan'
  end
end