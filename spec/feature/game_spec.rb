require 'spec_helper'
require_relative 'webhelpers'

feature 'user should see available choices' do
  scenario 'user should see rock choice' do
    sign_in_and_play
    expect(page).to have_button('Rock')
  end
end

feature "result" do

  scenario 'Player selects Scissors, Computer selects Paper. Player 1 wins.' do
    sign_in_and_play
    click_button("Scissors")
    allow(Game.instance).to receive(:computer_choice).and_return "Paper"
    expect(page).to have_content ("Computer chose Paper. Player 1 beats Computer")
  end

end
