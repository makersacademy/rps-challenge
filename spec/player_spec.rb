require 'player'

RSpec.describe Player do
  subject(:wilson) { Player.new('Wilson') }
  
  describe '#name' do
    it 'returns the name' do
      expect(wilson.name).to eq('Wilson')
    end
  end

  describe '#make_move' do
    it 'remembers the last move' do
      subject.make_move('rock')
      expect(subject.move).to eq('rock')
    end
  end
end
