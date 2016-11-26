require 'spec_helper'
RSpec.feature "Register name to play RPS game" do
  scenario "Lands on game homepage and enters username" do
    visit('/')
    fill_in :player_1_name, with: 'Liz'
    click_button('Submit')
    expect(page).to have_content("Liz has been successfully created")
  end
end
