require 'spec_helper'
require 'game'

describe Game do

  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player }
  let(:computer) { double :computer }

  context 'the logic behind' do
    it 'expects paper to beat rock' do
      game.selections("Paper", "Rock")
      expect(game.wins?).to be true
    end

    it 'expects rock to beat scissors' do
      game.selections("Rock", "Scissors")
      expect(game.wins?).to be true
    end

    it 'expects scissors to beat paper' do
      game.selections("Scissors", "Paper")
      expect(game.wins?).to be true
    end
  end

  context 'Logic when the computer wins' do
    it 'expects paper to beat rock' do
      game.selections("Rock", "Paper")
      expect(game.wins?).to be false
    end
  end

  context '#winner' do
    it 'should set the winner variable to the player name' do
      allow(player).to receive(:name).and_return("John")
      allow(game).to receive(:wins?).and_return true
      expect(game.winner).to eq "John"
      end
    end

  end
