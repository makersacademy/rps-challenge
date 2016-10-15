require 'spec_helper'

feature 'register names' do
  scenario 'when a name is inputted' do
    visit('/')
    fill_in :player1, with: "Malinna"
    click_button "play"
    expect(page).to have_content "Malinna"
  end
end
