require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double(:player_1) }
  let(:player_2) { double(:player_2) }

  describe '#player' do
    it 'contains 2 players' do
      expect(game.player_1).to eq(player_1)
      expect(game.player_2).to eq(player_2)
    end
  end

  describe '#messages' do
    it 'contains a message' do
      expect(game.message).to be_instance_of(Messages)
    end
  end

  describe '#battle_result' do
    context 'result is a draw' do
      it 'returns draw message' do
        allow(player_1).to receive(:weapon).and_return("Rock")
        allow(player_2).to receive(:weapon).and_return("Rock")
        expect(game.battle_result).to eq("It's a draw!")
      end
    end

    context 'player 1 win' do
      it 'returns player 1 win message' do
        allow(player_1).to receive(:weapon).and_return("Rock")
        allow(player_2).to receive(:weapon).and_return("Scissors")
        allow(player_1).to receive(:name).and_return("Player 1")
        expect(game.battle_result).to eq("Player 1 wins the round!")
      end
    end

    context 'player 2 win' do
      it 'returns player 2 win message' do
        allow(player_1).to receive(:weapon).and_return("Rock")
        allow(player_2).to receive(:weapon).and_return("Paper")
        allow(player_2).to receive(:name).and_return("Player 2")
        expect(game.battle_result).to eq("Player 2 wins the round!")
      end
    end
  end
end
