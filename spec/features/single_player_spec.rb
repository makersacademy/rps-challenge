require 'spec_helper'

feature 'Feature Test - Single Player Game' do
  scenario 'submitting names' do
    visit('/')
    click_button "Single-player"
    fill_in :name, with: "Rosie"
    click_button "Play!"
    expect(page).to have_content "Get ready to play Rosie!"
  end
end
