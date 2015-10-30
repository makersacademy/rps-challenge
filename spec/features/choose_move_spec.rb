require 'spec_helper'
require 'game'

feature 'Choose move' do
  let(:game) { Game.new }

  scenario 'A player can choose Rock' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('You chose Rock') 
  end

  scenario 'A player can choose Paper' do
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content('You chose Paper') 
  end

  scenario 'A player can choose Scissors' do
    sign_in_and_play
    click_button('Scissors')
    expect(page).to have_content('You chose Scissors') 
  end

  scenario 'Computer chooses random move' do
    srand(67809)
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('Computer chose Scissors')
  end
end
