require 'game'

describe Game do 
  let(:game) { described_class.new(player_1) }
  let(:player_1) { double :player_1 }

  context '#initialize' do
    it 'accepts a player object' do
      expect(game.player_1).to eq(player_1)
    end
  end
end
