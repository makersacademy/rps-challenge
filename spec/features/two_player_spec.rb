require 'spec_helper'

feature "Two player" do

  scenario "Expect page 1 to enter player 1 details" do
    visit('/')
    expect(page).to have_content "Enter player 1 name"
  end

  scenario "Expect page 2 to enter player 2 details" do
    visit('/')
    fill_in :player_name, with: 'Lauren'
    click_button 'Submit'
    expect(page).to have_content "Enter player 2 name"
  end

end
