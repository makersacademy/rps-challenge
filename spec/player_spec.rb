require 'player'

describe Player do
  let(:player) { described_class.new('Dan') }

  describe '#initialize' do
    it 'initializes with name Dan' do
      expect(player.name).to eq 'Dan'
    end
  end

  describe '#move' do
    it 'returns correct move for player' do
      player.move('rock')
      expect(player.move_choice).to eq 'rock'
    end
  end
end