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
    expect(page).to have_content "Enter your move! Rock, paper or scissors?!"
  end

  scenario 'entering name and move, returns name and move' do
    visit '/'
    click_link '1 Player'
    fill_in 'move', with: 'rock'
    fill_in 'name', with: 'kyle'
    click_button 'Submit'
    expect(page).to have_content "Hi kyle. You chose rock."
  end

  scenario 'entering name and move, returns result' do
    allow_any_instance_of(Computer).to receive(:play) {:rock}
    visit '/'
    click_link '1 Player'
    fill_in 'move', with: 'rock'
    fill_in 'name', with: 'kyle'
    click_button 'Submit'
    expect(page).to have_content "Computer chose rock. DRAW"
  end




end
