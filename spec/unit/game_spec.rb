require_relative '../../lib/game'

describe Game do
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }
  subject(:game) { described_class.new(player1, player2) }

  it 'has a player 1' do
    expect(game.player1).to eq player1
  end

  it 'has a player 2' do
    expect(game.player2).to eq player2
  end

  describe '#determine_outcome' do
    context 'player 1 picked rock' do
      before(:each) { allow(player1).to receive(:move).and_return(:rock)}

      it 'player 1 wins if player 2 picked scissors' do
        allow(player2).to receive(:move).and_return(:scissors)
        game.determine_outcome
        expect(game.winner).to eq player1
      end

      it 'player 1 loses if player 2 picked paper' do
        allow(player2).to receive(:move).and_return(:paper)
        game.determine_outcome
        expect(game.winner).to eq player2
      end

      it 'ties if player 2 picked rock' do
        allow(player2).to receive(:move).and_return(:rock)
        expect(game.determine_outcome).to eq :tie
      end
    end

    context 'player 1 picked paper' do
      before(:each) { allow(player1).to receive(:move).and_return(:paper)}

      it 'player 1 wins if player 2 picked rock' do
        allow(player2).to receive(:move).and_return(:rock)
        game.determine_outcome
        expect(game.winner).to eq player1
      end

      it 'player 1 loses if player 2 picked scissors' do
        allow(player2).to receive(:move).and_return(:scissors)
        game.determine_outcome
        expect(game.winner).to eq player2
      end

      it 'ties if player 2 picked paper' do
        allow(player2).to receive(:move).and_return(:paper)
        expect(game.determine_outcome).to eq :tie
      end
    end

    context 'player 1 picked scissors' do
      before(:each) { allow(player1).to receive(:move).and_return(:scissors)}

      it 'player 1 wins if player 2 picked paper' do
        allow(player2).to receive(:move).and_return(:paper)
        game.determine_outcome
        expect(game.winner).to eq player1
      end

      it 'player 1 loses if player 2 picked rock' do
        allow(player2).to receive(:move).and_return(:rock)
        game.determine_outcome
        expect(game.winner).to eq player2
      end

      it 'ties if player 2 picked scissors' do
        allow(player2).to receive(:move).and_return(:scissors)
        expect(game.determine_outcome).to eq :tie
      end
    end

  end
end
