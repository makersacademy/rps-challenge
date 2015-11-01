require 'spec_helper'

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'P1'
    click_button 'Submit'
    expect(page).to have_content "P1, prepare for battle"
  end
end
