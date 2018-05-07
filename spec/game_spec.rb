require 'game'

describe Game do
  let(:bot) { double :bot, name: 'RPS_Bot', move: 0 }
  let(:player) { double :player, name: 'Bob', move: "1" }
  subject(:game) { described_class.new(player, bot) }


  describe '#initialize' do
    it 'saves first argument as player_one attribute' do
      expect(game.player_one).to eq(player)
    end
    it 'saves second argument as player_two attribute' do
      expect(game.player_two).to eq(bot)
    end
  end

  describe '#outcome' do
    it 'returns win when player selects paper and bot selects rock' do
      expect(game.outcome).to eq('win')
    end
  end


  end
