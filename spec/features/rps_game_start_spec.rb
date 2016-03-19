# in spec/features/rps_game_start_spec.rb
require 'spec_helper'

feature 'RPS game starts' do
  scenario 'allows user to enter their name' do
    visit '/'
    fill_in('First Name', :with => 'Shane')
    click_button('Start game')
    expect(page).to have_content('Welcome Shane')
  end
end
