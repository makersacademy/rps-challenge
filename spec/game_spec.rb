require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2)}
  let(:player_1) { double :player_1, weapon: :rock }
  let(:player_2) { double :player_2, weapon: :scissors }

  describe 'default' do
    it 'accepts two players' do
      expect(game.player_1).not_to be_nil
      expect(game.player_2).not_to be_nil
    end
  end

  describe '#outcome' do
    it 'returns the outcome of the two weapons' do
      expect(game.outcome).to eq :win
    end

    it 'returns Draw when Rock and Rock are played' do
      allow(player_1).to receive(:weapon) {:rock}
      allow(player_2).to receive(:weapon) {:rock}
      expect(game.outcome).to eq :draw
    end

    it 'returns Lose when Rock and Paper are played' do
      allow(player_1).to receive(:weapon) {:rock}
      allow(player_2).to receive(:weapon) {:paper}
      expect(game.outcome).to eq :lose
    end

    it 'returns Win when Rock and Scissors are played' do
      allow(player_1).to receive(:weapon) {:rock}
      allow(player_2).to receive(:weapon) {:scissors}
      expect(game.outcome).to eq :win
    end

    it 'returns Draw when Paper and Paper are played' do
      allow(player_1).to receive(:weapon) {:paper}
      allow(player_2).to receive(:weapon) {:paper}
      expect(game.outcome).to eq :draw
    end

    it 'returns Win when Paper and Scissors are played' do
      allow(player_1).to receive(:weapon) {:paper}
      allow(player_2).to receive(:weapon) {:scissors}
      expect(game.outcome).to eq :lose
    end

    it 'returns Draw when Scissors and Scissors are played' do
      allow(player_1).to receive(:weapon) {:paper}
      allow(player_2).to receive(:weapon) {:paper}
      expect(game.outcome).to eq :draw
    end
  end
end
