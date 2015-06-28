require 'spec_helper'

feature 'extending the game to Rock Paper Scissors Lizard Spock' do

  scenario 'at start a player can choose to play this advanced version' do
    nicola_in_single_player_advanced_mode
    expect(page).to have_content 'Lizard poisons Spock'
  end

  scenario 'Spock loses to Lizard' do
    nicola_in_single_player_advanced_mode
    choose('lizard', :match => :first)
    allow($game.player_2).to receive(:choice).and_return('spock')
    click_button('Choose')
    expect(page).to have_content 'Lizard poisons Spock'
  end

  scenario 'Spock beats Scissors' do
    nicola_in_single_player_advanced_mode
    choose('spock', :match => :first)
    allow($game.player_2).to receive(:choice).and_return('scissors')
    click_button('Choose')
    expect(page).to have_content 'Spock smashes Scissors'
  end

  scenario 'Spock loses to Rock' do
    nicola_in_single_player_advanced_mode
    choose('spock', :match => :first)
    allow($game.player_2).to receive(:choice).and_return('rock')
    click_button('Choose')
    expect(page).to have_content 'Spock vapourizes Rock'
  end

  scenario 'Lizard beats Paper' do
    nicola_in_single_player_advanced_mode
    choose('lizard', :match => :first)
    allow($game.player_2).to receive(:choice).and_return('paper')
    click_button('Choose')
    expect(page).to have_content 'You won'
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
