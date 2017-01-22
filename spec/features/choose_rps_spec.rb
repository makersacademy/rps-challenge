require 'spec_helper'

feature "RPS" do
  scenario "player can choose Rock" do
    sign_in_and_play
    expect(page).to have_button("Rock")
  end

  scenario "outputs rock if player selected rock" do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_text("Rock")
  end

  scenario "player can choose Paper" do
    sign_in_and_play
    expect(page).to have_button("Paper")
  end

  scenario "outputs paper if player selected paper" do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_text("Paper")
  end

  scenario "player can choose Scissors" do
    sign_in_and_play
    expect(page).to have_button("Scissors")
  end

  scenario "outputs paper if player selected paper" do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_text("Scissors")
  end
end
