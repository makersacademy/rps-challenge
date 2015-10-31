require 'spec_helper'

feature 'Enter username' do
  scenario 'User name is displayed' do
    visit('/')
    fill_in(:p1_name, with: 'Andy')
    fill_in(:p2_name, with: 'Leigh Ann')
    click_button('Submit')
    expect(page).to have_content('Please select your attack, Andy')
  end
end
