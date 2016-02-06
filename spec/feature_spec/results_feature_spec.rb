require 'spec_helper'

feature 'The player can see results' do

  before do
    sign_up
    click_button("rock")
  end

  xscenario 'The player loses' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    expect(page).to have_content('Soulless Marketeer. YOU ARE A LOSER! But I suppose you\'re used to hearing that as a Marketeer')
  end

  xscenario 'The player draws' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    expect(page).to have_content('Soulless Marketeer. It\'s a draw. But you\'re still a loser for being a Marketeer')
  end

  xscenario 'The player wins' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    expect(page).to have_content('Soulless Marketeer. YOU ARE A WINNER! But you\'re still a loser for being a Marketeer')
  end
end
