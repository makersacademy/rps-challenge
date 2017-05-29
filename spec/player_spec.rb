require 'spec_helper'

describe Player do
  options = {name: 'Sam', move: :rock}
  subject(:player) {described_class.new('Sam')}
  before do
   player.choose_move(:rock)
  end

  describe'#name' do
    it 'returns players name' do
      expect(player.name).to eq 'Sam'
    end
  end

  describe'#turn' do
    it 'returns players move' do
      expect(player.move).to eq :rock
    end
  end
end
