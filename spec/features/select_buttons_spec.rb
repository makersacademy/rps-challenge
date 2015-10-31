require 'spec_helper'

feature 'can click on each button action' do

  scenario 'player1 can select - rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content("He-Man chose attack method Rock")

  end
  scenario 'player can select - paper' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content("He-Man chose attack method Paper")
  end

  scenario 'player can select - scissors' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content("He-Man chose attack method Scissors")
  end

end
