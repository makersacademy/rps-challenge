require './app/app.rb'
require 'spec_helper'
feature 'Computer will respond with a choice' do
  scenario 'will show me options to select Rock' do
    visit '/'
    fill_in :name, with: 'Stephan'
    click_button 'submit'
    expect(page).to have_content("Computer's choice: ROCK")
  end
end