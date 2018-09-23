require './lib/game'

describe Game do
  subject(:game)      { described_class.new(player, opponent)}
  let(:player)        { double "The player", name: "Ayodele Alakija"}
  let(:opponent)      { double "The opponent", name: "Thomas Miller"}

  describe '#storage' do
    it 'stores 1st player name' do
      expect(game.player).to eq player
    end

    it 'stores opponent player name' do
      expect(game.opponent).to eq opponent
    end
  end

  describe '#winner' do
    it 'declares the player the winner' do
      allow(player).to receive(:option).and_return("Rock")
      allow(opponent).to receive(:option).and_return("Scissors")
      expect(game.winner).to eq "Ayodele Alakija wins"
    end

    it 'declares the opponent the winner' do
      allow(player).to receive(:option).and_return("Rock")
      allow(opponent).to receive(:option).and_return("Paper")
      expect(game.winner).to eq "Thomas Miller wins"
    end
  end

  describe '#draw' do
    it 'declares no winner' do
      allow(player).to receive(:option).and_return("Rock")
      allow(opponent).to receive(:option).and_return("Rock")
      expect(game.winner).to eq "It's a draw"
    end
  end

  end
