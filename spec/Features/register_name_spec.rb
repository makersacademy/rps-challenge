require 'spec_helper'

feature 'register_name' do
  scenario 'player can register name before playing' do
    visit '/'
    fill_in :player_1_name, with: 'Tim'
    click_button('Register')
    expect(page).to have_content 'Tim vs Computer'
  end
end
