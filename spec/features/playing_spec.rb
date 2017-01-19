require 'spec_helper'

feature 'playing a game' do

  before do
    sign_in_and_play
  end

  scenario "see the options" do
    expect(page).to have_button "ROCK"
    expect(page).to have_button "PAPER"
    expect(page).to have_button "SCISSORS"
  end

  scenario "make a choice" do
    click_button "ROCK"
    expect(page).to have_content "You chose ROCK!"
  end

end
