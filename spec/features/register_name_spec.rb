require 'spec_helper'

feature "entering the name of the player" do
  it "accepts a name as an argument" do
    visit('/')
    fill_in :player_name, with: 'Jack'
    click_button 'Submit'
    expect(page).to have_content "Jack vs The Machine"
  end
end
