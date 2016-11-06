require 'game'
require 'player'

describe Game do

  subject(:game) { described_class.new(player1, player2)}
  let(:player1) { double :player1, name: "Luke", weapon: :rock}
  let(:player2) { double :player2, name: "Enigma", weapon: :scissors}

  describe '#initialize' do
    it 'has rules' do
      expect(game.beats).to include(rock: :scissors)
    end

    it 'has a player' do
      expect(game.player1.name).to eq("Luke")
    end
  end

  describe '#fight' do
    it 'rock beats scissors' do
      allow(player1).to receive(:weapon).and_return(:rock)
      allow(player2).to receive(:weapon).and_return(:scissors)
      expect(game.fight).to eq :player1_win
    end

    it 'scissors beats paper' do
      allow(player1).to receive(:weapon).and_return(:scissors)
      allow(player2).to receive(:weapon).and_return(:paper)
      expect(game.fight).to eq :player1_win
    end

    it 'paper beats rock' do
      allow(player1).to receive(:weapon).and_return(:rock)
      allow(player2).to receive(:weapon).and_return(:paper)
      expect(game.fight).to eq :player2_win
    end

    it 'rock vs rock is a draw' do
      allow(player1).to receive(:weapon).and_return(:rock)
      allow(player2).to receive(:weapon).and_return(:rock)
      expect(game.fight).to eq :draw
    end

    it 'scissors vs scissors is a draw' do
      allow(player1).to receive(:weapon).and_return(:scissors)
      allow(player2).to receive(:weapon).and_return(:scissors)
      expect(game.fight).to eq :draw
    end

    it 'paper vs paper is a draw' do
      allow(player1).to receive(:weapon).and_return(:paper)
      allow(player2).to receive(:weapon).and_return(:paper)
      expect(game.fight).to eq :draw
    end
  end


end
