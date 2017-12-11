
require 'spec_helper'

feature "game" do
  before do
    sign_in_and_play
  end

  scenario "show rock, paper or scissors options" do
    expect(page).to have_button 'Rock'
  end

  scenario "allow player to choose an RPS option" do
    click_button 'Rock'
    expect(page).to have_content "You chose Rock!"
  end

  scenario "computer chooses rock" do
    click_button 'Rock'
    comp_option = find(:css, "#computer").text
    expect("Computer chose Rock!").to include comp_option
  end

  scenario "computer makes a random choice" do
    srand(151624)
    click_button 'Rock'
    expect(page).to have_content "Computer chose Paper!"
  end

  scenario "player wins" do
    srand(151624)
    click_button 'Rock'
    expect(page).to have_content 'Player wins!'
  end
end
