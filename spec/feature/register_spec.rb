require 'spec_helper'

feature 'register name' do
  scenario 'register user name' do
    visit '/'
    fill_in :player_1_name, with: 'Cadbury'
    fill_in :player_2_name, with: 'Sonny'
    click_button 'Submit'
    expect(page).to have_content('Cadbury vs. Sonny')
  end
end
