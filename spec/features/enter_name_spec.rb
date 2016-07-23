require 'spec_helper'

feature 'Enter names' do
  scenario 'A player enters their name' do
    visit("/")
    fill_in :player_name, with: "Sophie"
    click_button("Submit")
    expect(page).to(have_content("Sophie"))
  end
end
