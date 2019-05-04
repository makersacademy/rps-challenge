require 'spec_helper'
# require 'Player'
# how to make that the computer choose a fixed option?

feature 'when user selects a choice, it shows result' do

    # player 2 is computer
    # player 1 is user
  scenario 'when user selects one of the 3 options, it displays winner' do
    register_play
    select('Rock', from: 'option')
    # this is selecting table from here <select id='list_id' name='table'>
    click_button 'submit'
    # save_and_open_page
    # player_1 = Player.new('Rock', 'Alex')
    # player_2 = Player.new('Scissors', 'Computer')
    # rps = RPS.new(player_1, player_2)
    # winner = rps.winner
    expect(page).to have_content('The winner is ')
  end
end
