require 'spec_helper'

describe "choosing a weapon", :type => :feature do
  scenario "the page confirms the weapon you chose" do
    submit_name
    click_link "Rock"
    expect(page).to have_content "You chose Rock"
  end

  scenario "the page tells you the weapon the computer chose" do
    submit_name
    click_link "Rock"
    expect(page).to have_content "The computer chose"
  end
end
