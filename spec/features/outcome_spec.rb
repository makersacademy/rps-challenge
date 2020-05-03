# require 'spec_helper'
# require './lib/game'
#
# feature 'Outcome page' do
#   let(:user) { double :player }
#   let(:game) { Game.new(user) }
# 
#   scenario 'User wins' do
#     sign_in_and_play
#     fill_in :choice, with: 'Paper'
#     allow_any_instance_of(Game).to receive(:computer_turn).and_return("Rock")
#     # allow(game.rps).to receive(:sample).and_return("Rock")
#     click_button("Play!")
#     expect(page).to have_content("Hibo wins!")
#   end
#
#   scenario 'Computer wins' do
#     sign_in_and_play
#     allow(game.rps).to receive(:sample).and_return("Rock")
#     fill_in :choice, with: 'Scissors'
#     click_button("Play!")
#     expect(page).to have_content("Computer wins!")
#   end
#
#   scenario 'Draw' do
#     sign_in_and_play
#     allow(game.rps).to receive(:sample).and_return("Rock")
#     fill_in :choice, with: 'Rock'
#     click_button("Play!")
#     expect(page).to have_content("It's a draw")
#   end
# end
