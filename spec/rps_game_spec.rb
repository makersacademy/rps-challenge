require 'rps_engine'

describe RpsGame do
  let(:game) { described_class.new }

  context 'taking input' do

    it 'raises an error if input move is incorrect' do
      expect { game.compare :not_a_move, :rock }.to(
        raise_error 'not a valid move')
      expect { game.compare :paper, :not_a_move }.to(
        raise_error 'not a valid move')
    end
  end

  context 'given two moves' do

    it 'can find the winner' do
      expect(game.compare :rock, :scissors).to eq player_1: :rock
      expect(game.compare :rock, :paper).to eq player_2: :paper
    end

    it 'can declare a draw' do
      expect(game.compare :rock, :rock).to eq draw: :rock
    end
  end
end