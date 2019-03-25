require 'spec_helper'
# require 'Player'



feature 'when user selects a choice, it shows result' do

    subject(:player_2){Player.new('Scissors')}

  scenario 'when user selects one of the 3 options, it displays winner' do
    register_play
    select('Rock', from: 'option')
    # this is selecting table from here <select id='list_id' name='table'>
    click_button 'submit'
    # save_and_open_page
    # player_2 = Player.new('Scissors')
    player_1 = Player.new('Rock')
    rps = RPS.new(player_1, player_2)
   winner = rps.winner
    expect(page).to have_content('The winner is Alex')
  end

  scenario 'when user selects another of the 3 options, it displays winner' do
    register_play
    select('Scissors', from: 'option')
    click_button 'submit'
    # save_and_open_page
    # player_2 = Player.new('Scissors')
    player_1 = Player.new('Scissors')
    rps = RPS.new(player_1, player_2)
    winner = rps.winner
    expect(page).to have_content("It's a draw")
  end

  scenario 'when user selects another of the 3 options, it displays winner' do
    register_play
    select('Paper', from: 'option')
    click_button 'submit'
    # save_and_open_page
    # player_2 = Player.new('Scissors')
    player_1 = Player.new('Paper')
    rps = RPS.new(player_1, player_2)
    winner = rps.winner
    expect(page).to have_content("The winner is Computer")
  end

end
