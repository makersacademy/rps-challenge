require './spec/spec_helper'

feature "enter name"
  scenario "player types in name" do
    visit('/')
    fill_in :player_name, with: "Lanie"
    click_button "Submit"
    expect(page).to have_content "Lanie is playing"
  end
