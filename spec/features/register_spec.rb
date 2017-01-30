require 'spec_helper'

feature 'register name' do
  scenario 'enter name and display it' do
    visit '/'
    fill_in 'name', with: 'Matt'
    click_button 'Submit'
    expect(page).to have_content 'Matt'
  end
end
