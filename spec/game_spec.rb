require 'game'

describe Game do 

  subject(:game) {described_class.new(:rooney, :cpu)}
  let(:rooney) {double :player}
  before { allow(rooney).to receive(:set_move).and_return(:rock)}
  let(:cpu) {double :cpu}

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


  describe '.player_turn' do 
    it 'should set off player.set_move' do 
      expect(rooney).to receive(:set_move).with('rock')
      subject.player_turn(rooney, 'rock')
    end 
  end 
end 
      