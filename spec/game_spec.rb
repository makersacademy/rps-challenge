
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

    it 'will accept a player instance and return that instance' do
      expect(game.player1).to eq player1
    end
  end

  describe 'winner' do

    it 'will return nil if there is a tie' do
      allow(player2).to receive(:choice) { :rock }
      allow(player1).to receive(:choice) { :rock }
      expect(game.winner).to eq nil
    end

    it 'will return player1 if player1 beats player2' do
      allow(player1).to receive(:choice) { :rock }
      allow(player2).to receive(:choice) { :lizard }
      expect(game.winner).to eq player1
    end

    it 'will return player2 if player2 beats player1' do
      allow(player1).to receive(:choice) { :lizard }
      allow(player2).to receive(:choice) { :scissors }
      expect(game.winner).to eq player2
    end
  end
  
  describe '#switch_turn' do

    it 'will change current_player' do
      expect{ game.switch_turn }.to change{ game.current_player }
      game.switch_turn
    end
  end
end


