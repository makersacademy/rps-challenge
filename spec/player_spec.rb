require 'player'

describe Player do

  subject(:player) {described_class.new('Steph')}

  describe '#initialize' do
    it 'has a name' do
      expect(player.name).to eq 'Steph'
    end
  end

  describe '#assign_choice' do
    it 'assigns a choice' do
      player.assign_choice(:rock)
      expect(player.selection).to eq :rock
    end
  end


end
