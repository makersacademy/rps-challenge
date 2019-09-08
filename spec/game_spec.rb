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
      allow(player1).to receive(:attack_with).and_return(:Rock)
      expect(game.attack(player1,:Rock)).to eq(:Rock)
    end
  end

  describe '#who_won?' do
    it 'returns no one if draw' do
      allow(player1).to receive(:attack).and_return(:Rock)
      allow(player2).to receive(:attack).and_return(:Rock)
      expect(game.who_won?).to eq("No winner")
    end

    it 'returns @player1 if player1 wins (p1 rock p2 scissor)' do
      allow(player1).to receive(:attack).and_return(:Rock)
      allow(player1).to receive(:name).and_return('Bob')
      allow(player2).to receive(:attack).and_return(:Scissors)
      expect(game.who_won?).to eq('Bob')
    end

    it 'returns @player2 if player2 wins (p1 rock p2 paper)' do
      allow(player1).to receive(:attack).and_return(:Rock)
      allow(player2).to receive(:attack).and_return(:Paper)
      allow(player2).to receive(:name).and_return('Computer')
      expect(game.who_won?).to eq('Computer')
    end

  end

end