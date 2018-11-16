require 'spec_helper'

feature 'Enter Name' do
  scenario "player enters name" do
    visit('/')
    fill_in :player, with: "Archer"
    click_button 'submit'
    click_button 'rock'
    expect(page).to have_content "Archer, you chose rock."
  end
end