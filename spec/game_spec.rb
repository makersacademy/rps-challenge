require 'game'

describe Game do

  subject(:game) { described_class.new(player) }
  let(:player) { double('player') }

  context 'when instantiated' do
    it 'takes a parameter and passes it to the @player attribute' do
      expect(game.player).to eq player
    end
  end

  describe 'self#create' do
    it 'instantiates a singleton' do
      described_class.create(player)
      expect(described_class.instance).to be_an_instance_of described_class
    end
  end

end
