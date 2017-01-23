require 'spec_helper'

feature "Enter Name" do
  scenario "submitting names" do
    visit ('/')
    fill_in :player_1_name, :with => "Ben"
    click_button "Submit"
    expect(page).to have_content "Welcome Ben"
  end
end
