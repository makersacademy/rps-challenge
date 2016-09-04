require 'spec_helper.rb'
require_relative './helpers.rb'

feature 'In Single Player Game' do
  scenario 'User chooses rock, computer paper' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    single_player_sign_in_helper
    click_link('Rock')
    expect(page).to have_content('Player 2 Won')
  end
  scenario 'User chooses rock, computer Scissors' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    single_player_sign_in_helper
    click_link('Rock')
    expect(page).to have_content('Player 1 Won')
  end
  scenario 'User chooses rock, computer rock' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    single_player_sign_in_helper
    click_link('Rock')
    expect(page).to have_content('Its A Draw')
  end
end

feature 'In Multiplayer Game' do
  scenario 'Player1 chooses rock, Player2 paper' do
    multiplayer_sign_in_helper
    click_link('Rock')
    click_link('Paper')
    expect(page).to have_content('Player 2 Won')
  end
  scenario 'Player1 chooses rock, Player2 Scissors' do
    multiplayer_sign_in_helper
    click_link('Rock')
    click_link('Scissors')
    expect(page).to have_content('Player 1 Won')
  end
  scenario 'Player1 chooses rock, Player2 rock' do
    multiplayer_sign_in_helper
    click_link('Rock')
    click_link('Rock')
    expect(page).to have_content('Its A Draw')
  end
end
