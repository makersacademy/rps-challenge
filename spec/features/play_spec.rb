require 'spec_helper'

feature 'Beginning a game' do
  scenario 'the computer offers rock, paper and scissors buttons' do
    sign_in_and_play_one_player
    expect(page).to have_content("What do you choose? Rock, Paper or Scissors?")
  end

feature 'playing again' do
  scenario "played once and want to play again" do
    sign_in_and_play_one_player
    player_chooses_paper
    click_button "Play again?"
    expect(page).to have_content("What do you choose? Rock, Paper or Scissors?")
  end
end

end
