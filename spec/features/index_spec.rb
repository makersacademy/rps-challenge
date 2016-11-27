require 'spec_helper'

feature Rps do

  scenario 'should allow a player to enter thier name' do
    sign_in_and_play
    expect(page).to have_content("Welcome MAMA")
  end

  scenario 'should play the game' do
    sign_in_and_play
    choose('paper')
    click_button('play')
    expect(page).to have_button('play again')
  end
end
