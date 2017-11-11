require 'game'
describe Game do
  
  let(:game) { described_class.new('Marie')}
  let(:player) { double 'fake player', name: 'Marie'}

  describe '#initialize' do
    it 'should initialize with a player' do
      expect(game.player.name).to eq 'Marie'
    end
  end
  describe '#play' do
    it 'should generate a turn instance' do
      expect(game.play).to eq 'Play!'
    end
  end
end
