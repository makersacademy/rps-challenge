require 'spec_helper'

feature "player enters move and sees move confirmed" do
  scenario "entering move" do
    register_and_play
    enter_player_move
    expect(page).to have_content 'You chose Rock!'
  end
end

feature "random move is generated and returned" do
  scenario "player has submitted move" do
    register_and_play
    enter_player_move
    @opponent_move = 'Paper'
    expect(page).to have_content 'Your opponent chose Paper!'
  end
end
