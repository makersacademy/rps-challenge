require 'game'

describe Game do
  let(:player1) { double 'Player 1' }
  let(:player2) { double 'Player 2' }
  let(:game) { described_class.new(player1, player2) }

  describe '#winner' do
    it 'scissors cuts paper' do
      allow(player1).to receive(:choice).and_return(:scissors)
      allow(player2).to receive(:choice).and_return(:paper)
      expect(game.winner).to eq(1)
    end

    it 'paper covers rock' do
      allow(player2).to receive(:choice).and_return(:paper)
      allow(player1).to receive(:choice).and_return(:rock)
      expect(game.winner).to eq(2)
    end

    it 'rock crushes lizard' do
      allow(player1).to receive(:choice).and_return(:rock)
      allow(player2).to receive(:choice).and_return(:lizard)
      expect(game.winner).to eq(1)
    end

    it 'lizard poisons spock' do
      allow(player2).to receive(:choice).and_return(:lizard)
      allow(player1).to receive(:choice).and_return(:spock)
      expect(game.winner).to eq(2)
    end

    it 'spock smashes scissors' do
      allow(player1).to receive(:choice).and_return(:spock)
      allow(player2).to receive(:choice).and_return(:scissors)
      expect(game.winner).to eq(1)
    end

    it 'scissors decapitates lizard' do
      allow(player2).to receive(:choice).and_return(:scissors)
      allow(player1).to receive(:choice).and_return(:lizard)
      expect(game.winner).to eq(2)
    end

    it 'lizard eats paper' do
      allow(player1).to receive(:choice).and_return(:lizard)
      allow(player2).to receive(:choice).and_return(:paper)
      expect(game.winner).to eq(1)
    end

    it 'paper disproves spock' do
      allow(player2).to receive(:choice).and_return(:paper)
      allow(player1).to receive(:choice).and_return(:spock)        
      expect(game.winner).to eq(2)
    end

    it 'spock vaporizes rock' do
      allow(player1).to receive(:choice).and_return(:spock)
      allow(player2).to receive(:choice).and_return(:rock)
      expect(game.winner).to eq(1)
    end

    it 'and as it always has, rock crushes scissors' do
      allow(player2).to receive(:choice).and_return(:rock)
      allow(player1).to receive(:choice).and_return(:scissors)
      expect(game.winner).to eq(2)
    end
  end
end
