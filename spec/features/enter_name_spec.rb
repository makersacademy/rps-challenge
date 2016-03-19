require 'spec_helper'

feature "name entry" do
  scenario "users enters new name" do
    visit '/'
    fill_in "player_1_name", :with => "ass"
    click_button 'Submit'
    expect(page).to have_content "ass vs. computer"
  end
end
