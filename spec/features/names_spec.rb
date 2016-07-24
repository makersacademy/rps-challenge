require 'spec_helper'

feature "Names" do
  scenario 'Adding player name' do
    visit ('/')
    fill_in :player_name, with: "Adam"
    click_button "Submit"
    expect(page).to have_content "Player = Adam"
  end
end
