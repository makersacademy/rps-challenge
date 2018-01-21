require 'player'

describe Player do
  subject(:player) { described_class.new('Alex') }

  describe '#initialize' do
    it 'stores a player\'s name' do
      expect(player.name).to eq('Alex')
    end
  end

  describe '#choice' do
    it 'stores a player\'s move choice' do
      player.move_choice('rock')
      expect(player.choice).to eq :rock
    end
  end
end
