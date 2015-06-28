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
    click_button 'vs Computer'
    expect(page).to have_content 'Welcome, David'
  end

  scenario 'player can input a different name' do
    visit '/'
    fill_in 'name', :with => 'Peter'
    click_button 'vs Computer'
    expect(page).to have_content 'Welcome, Peter'
  end

  scenario 'player name defaults to Player when none given' do
    visit '/'
    click_button 'vs Computer'
    expect(page).to have_content 'Welcome, Player'
  end

  context 'Playing a game' do

    before(:each) do
      visit '/'
      fill_in 'name', :with => 'David'
      click_button 'vs Computer'
    end

    scenario 'player can win' do
      allow(RPS).to receive(:random_choice).and_return(:scissors)
      click_button 'rock'
      expect(page).to have_content 'David Wins!'
    end

    scenario 'player can lose' do
      allow(RPS).to receive(:random_choice).and_return(:paper)
      click_button 'rock'
      expect(page).to have_content 'Computer Wins!'
    end

    scenario 'player can draw' do
      allow(RPS).to receive(:random_choice).and_return(:rock)
      click_button 'rock'
      expect(page).to have_content 'Draw!'
    end
  end



end