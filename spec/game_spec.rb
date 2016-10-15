require 'game'

describe Game do

  subject(:game) { described_class.new(dave) }
  let(:dave) { double :player }

  describe 'initialize' do
    it 'accepts a player instance' do
      expect(game.player).to eq dave
    end
  end
end
