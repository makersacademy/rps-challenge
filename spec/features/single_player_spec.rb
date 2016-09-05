require 'spec_helper'

feature 'Singleplayer' do

  scenario 'click Singleplayer' do
    visit '/'
    click_button 'Singleplayer'
    expect(page).to have_content('Welcome to Single Player')
  end
end
