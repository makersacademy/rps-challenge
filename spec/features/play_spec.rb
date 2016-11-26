require './app.rb'
require 'spec_helper'

RSpec.feature "Play", :type => :feature do
  scenario "Players name appears" do
    sign_in_and_play
    expect(page).to have_content "Louisa VS Computer"
  end

  scenario "Can click on Rock option" do
    sign_in_and_play
    click_button("ROCK")
    expect(page).to have_content "You have chosen: Rock"
  end

  scenario "Can ciick on Paper option" do
    sign_in_and_play
    click_button("PAPER")
    expect(page).to have_content "You have chosen: Paper"
  end

  scenario "Can click on Scissors option" do
    sign_in_and_play
    click_button("SCISSORS")
    expect(page).to have_content "You have chosen: Scissors"
  end

  scenario "Can see Computers choice after clicking a button" do
    sign_in_and_play
    click_button("SCISSORS")
    expect(page).to have_content "Computer has chosen:"
  end

end
