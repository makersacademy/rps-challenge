require 'spec_helper'

feature 'Enter name' do
  scenario 'submitting name' do
    visit('/')
    fill_in :player_name, with: 'Daniela'
    click_button 'Submit'
    expect(page).to have_content 'Daniela'
  end
end
