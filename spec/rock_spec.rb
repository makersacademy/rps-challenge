require 'spec_helper'

feature 'redirect to rock page' do
  scenario ' allow rock' do
    visit('/')
    fill_in :player_1_name, with: 'P1'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content 'P1, you have selected rock'
  end
end
