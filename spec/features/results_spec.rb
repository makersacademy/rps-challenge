require 'spec_helper'

feature 'return the outcome' do
  scenario "has message" do
    add_name_and_play
    click_button('Rock')
    expect(page).to have_content("The winner is...")
  end
  scenario "has the winner's name" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    add_name_and_play
    click_button('Scissors')
    expect(page).to have_content("Player 1")
  end
end
