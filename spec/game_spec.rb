require 'game'

describe Game do
  let(:bot) { double :bot }
  let(:player) { double :player }
  subject(:game) { described_class.new(player, bot) }

  describe '#initialize' do
    it 'saves first argument as player_one attribute' do
      expect(game.player_one).to eq(player)
    end
    it 'saves second argument as player_two attribute' do
      expect(game.player_two).to eq(bot)
    end
  end

  describe '#calculate_win' do
    context 'player one wins' do

      it 'returns player when player selects rock and bot selects scissors' do
        allow(bot).to receive(:move).and_return('scissors')
        allow(player).to receive(:move).and_return('rock')
        expect(game.calculate_win(player, bot)).to eq(player)
      end

      it 'returns player when player selects scissors and bot selects paper' do
        allow(bot).to receive(:move).and_return('paper')
        allow(player).to receive(:move).and_return('scissors')
        expect(game.calculate_win(player, bot)).to eq(player)
      end

      it 'returns player when player selects paper and bot selects rock' do
        allow(bot).to receive(:move).and_return('rock')
        allow(player).to receive(:move).and_return('paper')
        expect(game.calculate_win(player, bot)).to eq(player)
      end

    end

    context 'player two wins' do

      it 'returns bot when bot selects rock and player selects scissors' do
        allow(bot).to receive(:move).and_return('rock')
        allow(player).to receive(:move).and_return('scissors')
        expect(game.calculate_win(player, bot)).to eq(bot)
      end

      it 'returns bot when bot selects scissors and player selects paper' do
        allow(bot).to receive(:move).and_return('scissors')
        allow(player).to receive(:move).and_return('paper')
        expect(game.calculate_win(player, bot)).to eq(bot)
      end

      it 'returns bot when bot selects paper and player selects rock' do
        allow(bot).to receive(:move).and_return('paper')
        allow(player).to receive(:move).and_return('rock')
        expect(game.calculate_win(player, bot)).to eq(bot)
      end

    end

    context 'draw' do
      it 'returns draw if player and bot select same move' do
        allow(bot).to receive(:move).and_return('rock')
        allow(player).to receive(:move).and_return('rock')
        expect(game.calculate_win(player, bot)).to eq('draw')
      end
    end

  end
end
