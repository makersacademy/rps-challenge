require 'spec_helper'

feature '/results' do
  before do 
  allow_any_instance_of(Array).to receive(:sample) { 'Scissors' }
  end

  scenario 'player: Rock, comp: Scissors, player wins' do
    sign_in
    click_button('Rock')
    expect(page).to have_content('Charlie wins') 
  end

  scenario 'player: Paper, comp: Scissors, comp wins' do
    sign_in
    click_button('Paper')
    expect(page).to have_content('The computer wins')
  end

  scenario 'player: Scissors, comp:Scissors, its a tie' do
    sign_in
    click_button('Scissors')
    expect(page).to have_content('The game was a tie')
  end
end
