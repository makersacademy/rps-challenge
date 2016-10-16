require 'spec_helper'
require_relative 'webhelpers'

feature 'user should see available choices' do
  scenario 'user should see rock choice' do
    sign_in_and_play
    expect(page).to have_button('Rock')
  end
  scenario 'user should see scissors choice' do
    sign_in_and_play
    expect(page).to have_button('Scissors')
  end
  scenario 'user should see paper choice' do
    sign_in_and_play
    expect(page).to have_button('Paper')
  end
end

feature "result" do

  scenario 'Player selects Scissors, Computer selects Scissors. Draw.' do
    allow_any_instance_of(Game).to receive(:set_computer_selection).and_return('Scissors')
    sign_in_and_play
    click_button("Scissors")
    expect(page).to have_content ("Draw")
  end

  scenario 'Player selects Paper, Computer selects Scissors. Draw.' do
    allow_any_instance_of(Game).to receive(:set_computer_selection).and_return('Scissors')
    sign_in_and_play
    click_button("Paper")
    expect(page).to have_content ("Computer chose Scissors. Computer beats Player 1")
  end

  scenario 'Player selects Rock, Computer selects Paper. Draw.' do
    allow_any_instance_of(Game).to receive(:set_computer_selection).and_return('Paper')
    sign_in_and_play
    click_button("Scissors")
    expect(page).to have_content ("Computer chose Paper. Player 1 beats Computer")
  end

end
