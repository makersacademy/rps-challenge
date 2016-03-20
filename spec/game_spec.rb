
require 'spec_helper'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }
    
  before do
      allow(player1).to receive(:name) { 'Charlie' }
      allow(player2).to receive(:name) { 'Roxanne' }
   end

  describe '#initialize' do

    it 'will accept a player instance and return that instance in player' do
      expect(game.player1).to eq player1
    end
  end

  describe '#results_message' do

    it 'will return tie if player2_choice and player1_choice are equal' do
      allow(player2).to receive(:choice) { 'Rock' }
      allow(player1).to receive(:choice) { 'Rock' }
      expect(game.winner).to eq nil
    end

    it 'will return player 1 wins  if player1_choice beats player2_choice' do
      allow(player2).to receive(:choice) { 'Lizard' }
      allow(player1).to receive(:choice) { 'Rock' }
      expect(game.winner).to eq player1
    end

    it 'will return player 2 wins if player2_choice beats player1_choice' do
      allow(player2).to receive(:choice) { 'Scissors' }
      allow(player1).to receive(:choice) { 'Lizard' }
      expect(game.winner).to eq player2
    end
  end
  
  describe '#switch_turn' do

    it 'will change current_player from player1 to player2' do
      expect{ game.switch_turn }.to change{ game.current_player }.from(player1).to(player2)
      game.switch_turn
    end
  end
end


