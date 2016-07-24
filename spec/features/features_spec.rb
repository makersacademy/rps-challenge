require 'spec_helper'

feature 'name' do
  scenario 'user inputs their name' do
    visit '/'
    fill_in :player1_name, with: 'Luke'
    expect(page).to have_content 'Please enter your name'
  end
end
