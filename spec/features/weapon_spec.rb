require_relative '../spec_helper'


feature 'confirming weapons' do
  before do
    sign_in_and_play
  end

# As a marketeer
# So I can play a game
# I want to choose a weapon to play with
  scenario 'player chooses weapon' do
    click_button 'Rock'
    expect(page).to have_content 'Anna, your chosen weapon is a rock'
  end

# As a marketeer
# So I can play a game
# I want the game to choose an weapon option
end
