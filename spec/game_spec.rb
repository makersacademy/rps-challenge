require 'game'

describe Game do

  let(:player_1) { double(name: 'player_1') }
  let(:game)  { described_class.new( player_class_1: player_1) }

  describe '#initialize' do
    it 'initializes class with player_1 instance' do
      expect(game.player_1).to eq player_1
    end
  end
end