require 'spec_helper'

feature 'Player plays against computer' do
  scenario 'Player wins' do
    allow(Kernel).to receive(:rand).and_return(2)
    sign_in_and_play
    expect(page).to have_content "You win"
  end

  scenario 'Player loses' do
    allow(Kernel).to receive(:rand).and_return(1)
    sign_in_and_play
    expect(page).to have_content "You lose"
  end

  scenario 'Player draws' do
    allow(Kernel).to receive(:rand).and_return(0)
    sign_in_and_play
    expect(page).to have_content "It's a draw"
  end
end
