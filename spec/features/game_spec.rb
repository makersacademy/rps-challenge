require 'spec_helper'
# require 'Player'

feature 'when user selects a choice, it shows result' do
  scenario 'when user selects one of the 3 options, it displays winner' do
    register_play
    select('Rock', from: 'option')
    click_button 'submit'
    # save_and_open_page
    player_2 = Player.new('Scissors')
    # p player_2.choice

    expect(page).to have_content('The winner is Alex')

  end

  scenario 'when user selects another of the 3 options, it displays winner' do
    register_play
    select('Scissors', from: 'option')
    click_button 'submit'
    # save_and_open_page
    player_2 = Player.new('Scissors')
    # p player_2.choice

    expect(page).to have_content("It's a draw")

  end

  scenario 'when user selects another of the 3 options, it displays winner' do
    register_play
    select('Paper', from: 'option')
    click_button 'submit'
    # save_and_open_page
    player_2 = Player.new('Scissors')
    # p player_2.choice

    expect(page).to have_content("The winner is Computer")

  end

end
