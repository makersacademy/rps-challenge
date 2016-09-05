require 'spec_helper'

feature 'Multiplayer' do

  scenario 'click Multiplayer' do
    visit '/'
    click_button 'Multiplayer'
    expect(page).to have_content('Welcome to Multiplayer')
  end
end
