require 'game'
require 'player'

describe Game do

  subject(:game) { described_class.new("Luke", "Enigma")}
  let(:player1) { double :player1, weapon: :rock}
  let(:player2) { double :player2, weapon: :scissors}

  describe '#initialize' do
    it 'has rules' do
      expect(game.beats).to include(rock: :scissors)
    end

    it 'has a player' do
      expect(game.player1).to eq("Luke")
    end
  end

  describe '#fight' do
    it 'rock beats scissors' do
      allow(player1).to receive(:weapon).and_return(:rock)
      allow(player2).to receive(:weapon).and_return(:scissors)
      expect(game.fight(player1, player2)).to eq :player1_win
    end

    it 'scissors beats paper' do
      allow(player1).to receive(:weapon).and_return(:scissors)
      allow(player2).to receive(:weapon).and_return(:paper)
      expect(game.fight(player1, player2)).to eq :player1_win
    end

    it 'paper beats rock' do
      allow(player1).to receive(:weapon).and_return(:rock)
      allow(player2).to receive(:weapon).and_return(:paper)
      expect(game.fight(player1, player2)).to eq :player2_win
    end

    it 'rock vs rock is a draw' do
      allow(player1).to receive(:weapon).and_return(:rock)
      allow(player2).to receive(:weapon).and_return(:rock)
      expect(game.fight(player1, player2)).to eq :draw
    end

    it 'scissors vs scissors is a draw' do
      allow(player1).to receive(:weapon).and_return(:scissors)
      allow(player2).to receive(:weapon).and_return(:scissors)
      expect(game.fight(player1, player2)).to eq :draw
    end

    it 'paper vs paper is a draw' do
      allow(player1).to receive(:weapon).and_return(:paper)
      allow(player2).to receive(:weapon).and_return(:paper)
      expect(game.fight(player1, player2)).to eq :draw
    end
  end


end
