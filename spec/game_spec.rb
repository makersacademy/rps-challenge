require 'game'

describe Game do

  let(:player_1) {double :player_1}
  let(:player_2) {double :player_1}
  subject(:game_class) {described_class}
  subject(:game) {described_class.new(player_1, player_2)}

  describe 'Game#create' do
    it 'creates a new instance of Game' do
      expect(game_class).to receive(:new)
      game_class.create(player_1, player_2)
    end
  end

  describe 'Game#instance' do
    it 'returns an instance of Game' do
      game_class.create(player_1, player_2)
      expect(game_class.instance).to be_a Game
    end
  end

  before {allow(player_1).to receive(:weapon) {:rock}}

  describe '#result' do
    context 'player 1 wins' do
      it 'returns win' do
        allow(player_2).to receive(:weapon) {:scissors}
        expect(game.result).to eq(:win)
      end
    end

    context 'player 1 loses' do
      it 'returns lose' do
        allow(player_2).to receive(:weapon) {:paper}
        expect(game.result).to eq(:lose)
      end
    end

    context 'player 1 and player 2 draw' do
      it 'returns draw' do
        allow(player_2).to receive(:weapon) {:rock}
        expect(game.result).to eq(:draw)
      end
    end
  end
end

