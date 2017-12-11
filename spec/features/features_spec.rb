require 'spec_helper'

feature "saving name" do

  scenario "player can input their name" do
    visit('/')
    # p :player_name
    fill_in :player_name, :with => "Joe"
    # save_and_open_page
    click_button "Submit"
    expect(page).to have_content "Joe"
  end

  # scenario "player name is cached" do
  #   visit('/')
  #   fill_in :player, :with => "Player"
  #   click_button "Submit"
  #   expect(page).to have_content("Player")
  # end

end
