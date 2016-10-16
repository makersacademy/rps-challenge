require 'spec_helper'

feature "Test the enter names page so" do
  scenario "that player can enter their name" do
    visit('/')
    fill_in :player_name, with: "Rudolph"
    click_button 'Show me the money'
    expect(page).to have_content "Welcome Rudolph"
  end
end
