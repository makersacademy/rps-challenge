require 'spec_helper'

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

end