require 'game'

describe Game do

  let(:player_1) { double(name: 'player_1') }
  let(:player_2) { double(name: 'player_2') }
  let(:game)  { described_class.new( player_class_1: player_1, player_class_2: player_2) }

  describe '#initialize' do
    it 'initializes class with player_1 instance' do
      expect(game.player_1).to eq player_1
    end
    it 'initializes class with player_2 instance' do
      expect(game.player_2).to eq player_2
    end
  end
end