require 'spec_helper'

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1, with: "Bob"
    click_button "Submit"
    expect(page).to have_content "Bob was added to the game"
  end
end
