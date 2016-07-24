# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
require_relative '../spec_helper'

feature 'Play RPS game' do
  before do
    visit('/')
    fill_in :player_name, with: "Alwin"
    click_button "Submit"
  end
  scenario 'Display RPS game choices' do
    expect(page).to have_content "Rock"
    expect(page).to have_content "Paper"
    expect(page).to have_content "Scissors"
  end
end
