require 'game'

describe Game do
  subject(:game) { described_class.new(player, player2) }
  let(:player) { double(:player, weapon: :paper) }
  let(:player2) { double(:player, weapon: :rock) }

  it 'creates a new game' do
    Game.start(player, player)
    expect(Game.current_game).not_to be nil
  end

# didn't test for every possibility, there must be a better way of doing this!
  describe '#result' do
    context 'returns :win' do
      it 'when paper vs rock' do
        expect(game.result).to eq :win
      end

      it 'paper vs spock' do
        allow(player).to receive(:weapon).and_return(:paper)
        allow(player2).to receive(:weapon).and_return(:spock)
        expect(game.result).to eq :win
      end

      it 'rock vs scissors' do
        allow(player).to receive(:weapon).and_return(:rock)
        allow(player2).to receive(:weapon).and_return(:scissors)
        expect(game.result).to eq :win
      end

      it 'rock vs lizard' do
        allow(player).to receive(:weapon).and_return(:rock)
        allow(player2).to receive(:weapon).and_return(:lizard)
        expect(game.result).to eq :win
      end

      it 'scissors vs paper' do
        allow(player).to receive(:weapon).and_return(:scissors)
        allow(player2).to receive(:weapon).and_return(:paper)
        expect(game.result).to eq :win
      end

      it 'scissors vs lizard' do
        allow(player).to receive(:weapon).and_return(:scissors)
        allow(player2).to receive(:weapon).and_return(:lizard)
        expect(game.result).to eq :win
      end

      it 'lizard vs paper' do
        allow(player).to receive(:weapon).and_return(:lizard)
        allow(player2).to receive(:weapon).and_return(:paper)
        expect(game.result).to eq :win
      end

      it 'spock vs rock' do
        allow(player).to receive(:weapon).and_return(:spock)
        allow(player2).to receive(:weapon).and_return(:rock)
        expect(game.result).to eq :win
      end

      it 'spock vs scissors' do
        allow(player).to receive(:weapon).and_return(:spock)
        allow(player2).to receive(:weapon).and_return(:scissors)
        expect(game.result).to eq :win
      end
    end

    context 'returns :lose' do
      it 'when paper vs scissors' do
        allow(player2).to receive(:weapon).and_return(:scissors)
        expect(game.result).to eq :lose
      end

      it 'when scissors vs rock' do
        allow(player).to receive(:weapon).and_return(:scissors)
        allow(player2).to receive(:weapon).and_return(:rock)
        expect(game.result).to eq :lose
      end

      it 'when rock vs paper' do
        allow(player).to receive(:weapon).and_return(:rock)
        allow(player2).to receive(:weapon).and_return(:paper)
        expect(game.result).to eq :lose
      end

      it 'lizard vs rock' do
        allow(player).to receive(:weapon).and_return(:lizard)
        allow(player2).to receive(:weapon).and_return(:rock)
        expect(game.result).to eq :lose
      end

      it 'lizard vs scissors' do
        allow(player).to receive(:weapon).and_return(:lizard)
        allow(player2).to receive(:weapon).and_return(:scissors)
        expect(game.result).to eq :lose
      end
    end

    context 'returns :draw' do
      it 'when paper vs paper' do
        allow(player2).to receive(:weapon).and_return(:paper)
        expect(game.result).to eq :draw
      end

      it 'when rock vs rock' do
        allow(player).to receive(:weapon).and_return(:rock)
        expect(game.result).to eq :draw
      end

      it 'when scissors vs scissors' do
        allow(player).to receive(:weapon).and_return(:scissors)
        allow(player2).to receive(:weapon).and_return(:scissors)
        expect(game.result).to eq :draw
      end
    end
  end
end
