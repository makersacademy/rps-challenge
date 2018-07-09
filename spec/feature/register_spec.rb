require 'spec_helper'

feature 'register the name' do
  scenario 'enter your name to play' do
    visit '/'
    fill_in :name, with: 'Giacomo'
    click_button 'Submit'
    expect(page).to have_content 'Giacomo'
  end
end
