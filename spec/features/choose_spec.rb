require 'spec_helper'

feature "choose page" do
  scenario "there are buttons" do
    visit "/choose"
    expect(page).to have_button "Rock"
  end

  # scenario "clicking button" do
  #   visit "/choose"
  #   click_button "rock"
  #   # expect(page).to go to another page
  # end
end
