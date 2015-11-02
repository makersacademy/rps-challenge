require 'spec_helper'

feature 'can click on each button action' do

  scenario 'player1 can select - rock' do
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content("He-Man chose attack method rock")

  end
  scenario 'player can select - paper' do
    sign_in_and_play
    click_button 'paper'
    expect(page).to have_content("He-Man chose attack method paper")
  end

  scenario 'player can select - scissors' do
    sign_in_and_play
    click_button 'scissors'
    expect(page).to have_content("He-Man chose attack method scissors")
  end

end
