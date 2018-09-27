require 'spec_helper'
require './app'

feature "Results" do
  scenario "Shows player's 1 option" do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "Dumbledore chose rock"
  end

  scenario "Shows player's 2 option" do
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "The Machine chose paper"
  end

  scenario "Shows winner(computer) if not a tie" do
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "And the winner is... The Machine!"
  end

  scenario "Shows winner(player) if not a tie" do
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    sign_in_and_play
    click_button "Scissors"
    expect(page).to have_content "And the winner is... Dumbledore!"
  end

  scenario "Informs of tie" do
    allow_any_instance_of(Array).to receive(:sample).and_return('rock')
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "It's a tie!"
  end
end
