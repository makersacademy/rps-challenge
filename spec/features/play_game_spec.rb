require 'spec_helper'
require 'rps_control'

feature 'Starting a game' do

  scenario 'homepage loads' do
    visit '/'
    expect(page.status_code).to be 200
  end

  scenario 'player can input their name' do
    visit '/'
    fill_in 'name', :with => 'David'
    click_button 'Submit'
    expect(page).to have_content 'Welcome, David'
  end

  scenario 'player can input a different name' do
    visit '/'
    fill_in 'name', :with => 'Peter'
    click_button 'Submit'
    expect(page).to have_content 'Welcome, Peter'
  end

  context 'Playing a game' do

    before(:each) do
      visit '/'
      fill_in 'name', :with => 'David'
      click_button 'Submit'
    end

    scenario 'player can choose rock' do
      click_button 'rock'
      expect(page).to have_content 'David Wins!'
    end
  end



end