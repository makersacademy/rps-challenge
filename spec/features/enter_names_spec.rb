require 'spec_helper'

feature 'Enter name' do
  scenario 'submitting name in single player mode' do
    splayer_add_name_and_submit
    expect(page).to have_content "Welcome, Bob!"
  end

  scenario 'submitting names in multiplayer mode' do
    mplayer_add_names_and_submit
    expect(page).to have_content "Welcome, Bob!"
    click_button "Lizzard"
    expect(page).to have_content "Welcome, John!"
  end
end
