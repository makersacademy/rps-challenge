require 'spec_helper'

feature 'Play page' do
  scenario 'User starts game' do
    visit('/')
    click_button("Play!")
    expect(page).to have_content("Choose Rock, Paper or Scissors.")
  end

  scenario 'Displays user name' do
    visit('/')
    fill_in :name, with: 'Hibo'
    click_button("Play!")
    expect(page).to have_content("Hi Hibo!")
  end
end
