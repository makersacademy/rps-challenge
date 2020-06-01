require 'computer'

describe Computer do
  let(:name) { 'HAL' }
  let(:computer) { described_class.new(name) }

  describe '#initialize' do
    it 'is expected to respond to #new with 1 argument' do
      expect(described_class).to respond_to(:new).with(1).argument
    end
  end

  describe '#name' do
    it 'returns the computer name' do
      expect(computer.name).to eq name
    end
  end

  describe '#move' do
    it 'returns the move :rock' do
      srand(8)
      computer.pick_move
      expect(computer.move).to eq :rock
    end

    it 'returns the move :paper' do
      srand(10)
      computer.pick_move
      expect(computer.move).to eq :paper
    end

    it 'returns the move :paper' do
      srand(4)
      computer.pick_move
      expect(computer.move).to eq :scissors
    end
  end
end
