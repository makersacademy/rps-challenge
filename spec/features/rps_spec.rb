require './app'
require 'spec_helper'

feature "play rock/paper/scissors" do
  scenario "the user can see 3 buttons with options" do
    visit '/'
    fill_in "username", :with => "Veronica"
    click_button "Start!"
    expect(page).to have_button("Rock")
  end

  scenario "The Rock button was selected" do
    visit '/'
    fill_in "username", :with => "Veronica"
    click_button "Start!"
    click_button "Rock"
    expect(page).to have_text("Veronica's choice is Rock")
  end

  scenario "After selecting a button, the oponent randomly chooses" do
    visit '/'
    fill_in "username", :with => "Veronica"
    click_button "Start!"
    click_button "Rock"
    click_button "God"
    expect(page).to have_text("God's choice is:")
  end
end
