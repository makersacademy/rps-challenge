require 'spec_helper'

feature "Can enter name" do
  scenario "And show it on screen" do
    visit('/')
    fill_in :player, with: "Josh"
    click_button("Begin game")
    expect(page).to have_content("Josh vs. Computer")
  end
end
