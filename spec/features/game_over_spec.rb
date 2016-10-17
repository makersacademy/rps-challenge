require 'spec_helper'

feature "It let's the player know the game outcome" do

  scenario "the player wins" do
    srand(2)
    sign_in_and_play
    choose "Paper"
    click_button "Make your Choice"
    expect(page).to have_content "you win"
    end

  scenario "there is a draw" do
    srand(3)
    sign_in_and_play
    choose "Paper"
    click_button "Make your Choice"
    expect(page).to have_content "you lose - prepare to die"
    end

  scenario "the player loses" do
    srand(2)
    sign_in_and_play
    choose "Rock"
    click_button "Make your Choice"
    expect(page).to have_content "draw"
    end
  end
