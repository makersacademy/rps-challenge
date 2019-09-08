require './lib/game'

describe Game do
  let(:player1) {double :player}
  let(:player2) {double :player}
  subject(:game) {Game.new(player1,player2)}

  describe '#initialize' do
    it 'creates a game and retrieve player1' do
      expect(game.player1).to eq(player1)
    end

    it 'creates a game and retrieve player2 (computer)' do
      expect(game.player2).to eq(player2)
    end
  end

  describe '#attack' do
    it 'attack with rock' do
      allow(player1).to receive(:attack_with).and_return(:rock)
      expect(game.attack(player1,:rock)).to eq(:rock)
    end
  end

  describe '#who_won?' do
    it 'returns no one if draw' do
      allow(player1).to receive(:attack).and_return(:rock)
      allow(player2).to receive(:attack).and_return(:rock)
      expect(game.who_won?).to eq("It's a draw!")
    end

    it 'returns @player1 if player1 wins (p1 rock p2 scissor)' do
      allow(player1).to receive(:attack).and_return(:rock)
      allow(player1).to receive(:name).and_return('Bob')
      allow(player2).to receive(:attack).and_return(:scissors)
      expect(game.who_won?).to eq('Bob')
    end

    it 'returns @player2 if player2 wins (p1 rock p2 paper)' do
      allow(player1).to receive(:attack).and_return(:rock)
      allow(player2).to receive(:attack).and_return(:paper)
      allow(player2).to receive(:name).and_return('Computer')
      expect(game.who_won?).to eq('Computer')
    end

  end

end