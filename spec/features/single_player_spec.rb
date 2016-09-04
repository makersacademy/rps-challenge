require 'spec_helper'

feature 'Single Player' do
  scenario 'submitting names' do
    visit('/')
    click_link "Single-player"
    fill_in :player, with: "Rosie"
    click_button "Play!"
    expect(page).to have_content "Welcome to RPS Rosie!"
  end
end
