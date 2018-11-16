require 'spec_helper'

feature 'Enter Name' do
  scenario "player enters name" do
    visit('/')
    fill_in :player, with: "Archer"
    click_button 'submit'
    expect(page).to have_content "What will it be, Archer?"
  end
end
