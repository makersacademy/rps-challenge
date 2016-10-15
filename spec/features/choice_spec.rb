require "spec_helper"

RSpec.feature "choose rocks, paper or scissors", :type => :feature do

  before(:each) do
    visit "/"

    fill_in "Name", :with => "Dagmara"
    click_button "Game on!"
  end

  scenario "User can choose rock" do
    click_button "Smash"

    expect(page).to have_content("You chose rock")
  end

  scenario "User can choose paper" do
    click_button "Wrap"

    expect(page).to have_content("You chose paper")
  end

  scenario "User can choose scissors" do
    click_button "Chop"

    expect(page).to have_content("You chose scissors")
  end
end
