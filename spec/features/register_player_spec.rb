require 'spec_helper'

describe RoshamboWeb do
  feature 'registering player(s)' do
    scenario 'welcome page' do
      visit '/'
      expect(page).to have_content 'Welcome, please enter your name'
    end

    scenario 'player gets registered' do
      visit '/'
      fill_in 'player_name', :with => 'diego'
      click_button 'register'
      expect(page).to have_content 'diego'
    end

    scenario 'player must enter name' do
      visit '/'
      click_button 'register'
      expect(page).to have_content 'Welcome, please enter your name'
    end
  end
end