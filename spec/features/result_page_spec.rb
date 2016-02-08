require 'spec_helper'
require_relative 'web_helper'

feature 'result page' do

  before(:example) do
    allow(Kernel).to receive(:rand).and_return(2)
    sign_in
  end
  scenario 'displays Harry as the winner of the game' do
    click_button 'Rock'
    expect(page).to have_content 'Harry wins!!!'
  end

  scenario 'displays Computer as the winner of the game' do
    click_button 'Paper'
    expect(page).to have_content 'Computer wins!!!'
  end

  scenario 'displays a draw' do
    click_button 'Scissors'
    expect(page).to have_content 'Noone wins!!!'
  end

  scenario 'displays the player\'s choice' do
    click_button 'Rock'
    expect(page).to have_content 'Harry chooses rock'
  end

  scenario 'displays the computer\'s choice' do
    click_button 'Rock'
    expect(page).to have_content 'Computer chooses scissors'
  end

  scenario 'has an option to play again' do
    sign_in
    click_button 'Rock'
    expect(page).to have_button 'Play again'
  end


end
