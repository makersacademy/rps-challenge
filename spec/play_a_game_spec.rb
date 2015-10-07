require 'spec_helper'
require 'computer.rb'
require 'player.rb'
require 'rps_web.rb'
require 'rack'

feature 'Starting a new game' do
  scenario 'I am asked to choose one or two player game' do
    visit '/'
    expect(page).to have_content "Do you want to play 1 or 2 player mode?"
  end

  scenario 'clicking one player takes me to one player game' do
    visit '/'
    click_link '1 Player'
    expect(page).to have_content "Enter your move! Rock, paper, scissors, lizard or spock?! Enter your name!"
  end

  scenario 'entering name and move, returns name and move' do
    visit '/'
    click_link '1 Player'
    fill_in 'move', with: 'rock'
    fill_in 'name', with: 'kyle'
    click_button 'Submit'
    expect(page).to have_content "kyle chose rock"
  end

  scenario 'can only submit recognised moves' do
    visit '/'
    click_link '1 Player'
    fill_in 'move', with: 'plane'
    fill_in 'name', with: 'kyle'
    click_button 'Submit'
    expect(page).to have_content "not a valid move try again"
  end

  scenario 'submitting same move as computer, returns draw' do
    allow_any_instance_of(Computer).to receive(:play) {:rock}
    visit '/'
    click_link '1 Player'
    fill_in 'move', with: 'rock'
    fill_in 'name', with: 'kyle'
    click_button 'Submit'
    expect(page).to have_content "Computer chose rock. DRAW"
  end

  scenario 'submitting different move to the computer, confirms winning move' do
    allow_any_instance_of(Computer).to receive(:play) {:rock}
    visit '/'
    click_link '1 Player'
    fill_in 'move', with: 'paper'
    fill_in 'name', with: 'kyle'
    click_button 'Submit'
    expect(page).to have_content "Computer chose rock. PAPER WINS"
  end

  scenario 'clicking two player takes me to two player game' do
    visit '/'
    click_link '2 Player'
    expect(page).to have_content "Enter your move! Rock, paper, scissors, lizard or spock?! Enter your name!"
  end

  scenario 'starting a two player game tells me to wait for player if none currently waiting' do
    visit '/'
    click_link '2 Player'
    fill_in 'move', with: 'rock'
    fill_in 'name', with: 'kyle'
    click_button 'Submit'
    expect(page).to have_content "Waiting for opponent"
  end

  scenario 'both players enter move, winner gets determined' do
    visit '/'
    click_link '2 Player'
    fill_in 'move', with: 'rock'
    fill_in 'name', with: 'kyle'
    click_button 'Submit'
    visit '/'
    click_link '2 Player'
    fill_in 'move', with: 'scissors'
    fill_in 'name', with: 'loser'
    click_button 'Submit'
    expect(page).to have_content "Kyle chose rock Loser chose scissors ROCK WINS"
  end


end
