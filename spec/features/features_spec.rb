require 'spec_helper'
require './app'

RSpec.feature 'Testing homepage' do
  scenario 'have game title' do
    visit '/'
    expect(page).to have_content 'RPS'
  end

  scenario 'player can enter name' do
    visit '/'
    fill_in 'name', with: 'Claudia'
    click_button 'Play'
    expect(page).to have_content('Choose an option, Claudia')
  end
end
