require 'spec_helper'

feature 'Entering names' do

  scenario 'Player enter their name' do
    visit("/")
    fill_in("player", with: "Joseph")
    click_button("submit")
    expect(page).to have_content("Joseph's Game")
  end

end
