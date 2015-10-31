require 'spec_helper'

feature 'can click on each button action' do
  let(:RockPaperScissors) {double('RockPaperScissors', computer_selection: 'Paper')}
  scenario 'player1 can select - rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content("Computer randomly choses attack method Paper")

  end
end
