require 'spec_helper'

feature "index page" do

  scenario "front page" do
    visit "/"
    expect(page).to have_text("Rock, Paper, Scissors")

  end

  scenario "entering name" do
    sign_in_and_play
    expect(page).to have_text("Welcome Elizabeth")
  end

  scenario "making choice" do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(1)
    click_button("Rock")
    expect(page).to have_text("Your choice: Rock")
    expect(page).to have_text("You Win")
  end



end
