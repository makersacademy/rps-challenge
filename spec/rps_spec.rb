require 'rps'

describe RPS do
  let(:chrissy) { double(:chrissy) }
  subject(:game) { described_class.new(chrissy) }

  describe 'self.create' do
    it 'uses a class method to return an instance' do
      expect(RPS.create(chrissy)).to be_a RPS
    end
  end

  describe '#player' do
    it 'returns the player of the game' do
      expect(game.player).to eq chrissy
    end
  end

  describe 'self.instance' do
    it 'returns the class instance' do
      RPS.create(chrissy)
      expect(RPS.instance).to be_a RPS
    end
  end
end
