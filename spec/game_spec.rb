require 'game'

describe Game do 

  subject(:game) { described_class.new(:rooney, :cpu) }
  let(:rooney) { double :player }
  before { allow(rooney).to receive(:set_move).and_return(:rock) }
  let(:cpu) { double :cpu }
  before { allow(cpu).to receive(:move).and_return(:paper) }

  context '.player' do
    it 'should hold a player object' do 
      expect(subject.player).to eq(:rooney)
    end 
  end 

  context '.cpu' do
    it 'should hold a CPU object' do 
      expect(subject.cpu).to eq(:cpu)
    end 
  end 

  describe '.turn' do 
    it 'should add a point to cpu_score if cpu wins' do 
      subject.turn('rock', rooney, cpu)
      expect(subject.cpu_score).to eq(1)
    end

    it 'should add a point to player_score if player wins' do 
      subject.turn('scissors', rooney, cpu)
      expect(subject.player_score).to eq(1)
    end
  end 
end 
      