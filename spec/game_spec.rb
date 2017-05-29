require 'spec_helper'

describe Game do
  subject(:game) {described_class.new(player_1, player_2)}
  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }


  context 'calculating the outcome' do
    it 'calculates a draw' do
      allow(player_1).to receive(:move) { :rock }
      allow(player_2).to receive(:move) { :rock }
      expect(game.calculate_winner(player_1, player_2)).to eq 'Draw'
    end

    it 'calculates a win' do
      allow(player_1).to receive(:move) { :paper }
      allow(player_2).to receive(:move) { :rock }
      expect(game.calculate_winner(player_1, player_2)).to eq 'Win'
    end

    it 'calculates a loss' do
      allow(player_1).to receive(:move) { :scissors }
      allow(player_2).to receive(:move) { :rock }
      expect(game.calculate_winner(player_1, player_2)).to eq 'Lose'
    end

  end




end
