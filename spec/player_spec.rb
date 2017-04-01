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
      player.assign_choice('Rock')
      expect(player.selection).to eq 'Rock'
    end
  end


end
