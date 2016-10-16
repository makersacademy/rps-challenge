require 'spec_helper'

RSpec.feature Rps, :type => :feature do
  scenario "Player is ready to play against the rps bot" do

    sign_in_and_play

    expect(page).to have_text("It's Dionysis vs bot")
  end

  scenario "list of choices for player to select - rock" do

    sign_in_and_play

    expect(page).to have_button("Rock")
  end

  scenario "list of choices for player to select - paper" do

    sign_in_and_play

    expect(page).to have_button("Paper")
  end

  scenario "list of choices for player to select - paper" do

    sign_in_and_play

    expect(page).to have_button("Paper")
  end

end
