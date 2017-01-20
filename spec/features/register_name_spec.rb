require 'spec_helper'

feature 'Register name' do
  scenario 'marketeer enters their name' do
    visit('/')
    fill_in :marketeer_name, with: 'Margo'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Margo'
  end
end
