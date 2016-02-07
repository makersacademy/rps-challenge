require 'spec_helper'

feature 'The player can see results' do

  before do
    sign_up
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
  end

  scenario 'The player loses' do
    click_button("paper")
    expect(page).to have_content('Soulless Marketeer. YOU ARE A LOSER! But I suppose you\'re used to hearing that as a Marketeer')
  end

  scenario 'The player draws' do
    click_button("scissors")
    expect(page).to have_content('Soulless Marketeer. It\'s a draw. But you\'re still a loser for being a Marketeer')
  end

  scenario 'The player wins' do
    click_button("rock")
    expect(page).to have_content('Soulless Marketeer. YOU ARE A WINNER! But you\'re still a loser for being a Marketeer')
  end
end
