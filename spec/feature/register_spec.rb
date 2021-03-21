require 'spec_helper'

feature 'register name' do
  scenario 'register user name' do
    visit '/'
    fill_in :player_1_name, with: 'Cadbury'
    click_button 'Submit'
    expect(page).to have_content('Cadbury vs. RPS-A-TRON 5000')
  end
end
