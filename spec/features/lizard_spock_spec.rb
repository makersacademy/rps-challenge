require 'spec_helper'

feature 'extending the game to Rock Paper Scissors Lizard Spock' do

  scenario 'at start a player can choose to play this advanced version' do
    nicola_in_single_player_advanced_mode
    expect(page).to have_content 'Lizard poisons Spock'
  end

  scenario 'Spock loses to Lizard' do
    nicola_in_single_player_advanced_mode
    choose('lizard')
    allow($game.player_2).to receive(:choice).and_return('spock')
    click_button('Choose')
    expect(page).to have_content 'Lizard poisons Spock'
  end

  def nicola_in_single_player_advanced_mode
    $game = nil
    visit '/'
    choose('advanced')
    choose ('single')
    click_button('Start Game')
    fill_in('name', with: 'Nicola')
    click_button('Submit')
  end

end
