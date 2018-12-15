require 'cpu'

describe Cpu do
  subject(:cpu) { described_class.new }

  describe '#name' do
    it 'returns CPU name' do
      expect(cpu.name).to eq 'CPU'
    end
  end

  describe '#choose' do
    it "returns a random move" do
      allow(cpu).to receive(:pick_random_move).and_return('Rock')
      cpu.choose
      
      expect(cpu.choice).to eq 'Rock'
    end
  end
end
