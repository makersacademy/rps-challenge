require 'spec_helper'

feature 'Register name' do
  
  scenario 'registers name of player' do
    visit '/'
    fill_in 'name', with: 'Ali'
    click_button 'Submit'
    expect(page).to have_content 'Ali' 
  end
end
