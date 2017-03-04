require 'spec_helper'

feature "the outcome of the battle" do

  scenario "the battle is over" do
    submit_name
    click_link "Paper"
    expect(page).to have_content "Result:"
  end

  # before :each do
  #   allow_any_instance_of(Game).to receive(:computer_weapon).and_return("Rock")
  # end
  #
  # scenario "you win the battle" do
  #   submit_name
  #   click_link "Paper"
  #   expect(page).to have_content "You won."
  # end
  #
  # scenario "you lose the battle" do
  #   submit_name
  #   click_link "Scissors"
  #   expect(page).to have_content "You lost."
  # end
  #
  # scenario "you draw the battle" do
  #   submit_name
  #   click_link "Rock"
  #   expect(page).to have_content "You drew."
  # end
end
