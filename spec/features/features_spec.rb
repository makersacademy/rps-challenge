require 'spec_helper'
require './app'

RSpec.feature 'Testing homepage' do
  scenario 'have game title' do
    visit '/'
    expect(page).to have_content 'RPS'
  end

  scenario 'player can enter name' do
    visit '/'
    fill_in 'player', with: 'Claudia'
    click_button 'Play'
    expect(page).to have_content('Choose an option, Claudia')
  end
end

RSpec.feature 'testing result' do
  scenario 'player can choose option' do
    visit '/'
    fill_in 'player', with: 'Claudia'
    click_button 'Play'
    click_button 'Rock'
    expect(page).to have_content 'Result'
  end
end
