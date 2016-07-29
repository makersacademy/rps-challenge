require 'spec_helper'

feature 'displays the result' do
  scenario 'it\'s a draw' do
    allow(Kernel).to(receive(:rand).and_return(0))
    enter_player_name
    click_button("Rock")
    expect(page).to(have_content("It's a draw"))
  end

  scenario 'Player 1 wins' do
    allow(Kernel).to(receive(:rand).and_return(2))
    enter_player_name
    click_button("Rock")
    expect(page).to(have_content("Sophie wins!"))
  end

  scenario 'it is possible to play again' do
    enter_player_name
    click_button("Rock")
    click_button("Play again")
    expect(page).to(have_content("Welcome"))
  end
end
