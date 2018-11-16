require 'spec_helper'

feature 'Enter Name' do
  scenario "player enters name" do
    visit('/')
    fill_in :player, with: "Archer"
    click_button 'Submit'
    expect(page).to have_content "Archer"
  end
end
  