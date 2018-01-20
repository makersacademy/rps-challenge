require 'player'

describe Player do
  subject(:player) { described_class.new('Leigh-ann') }

  describe 'initialize' do
    it 'initializes with a name parameter and stores user name' do
       expect(player.name).to eq 'Leigh-ann'
    end
  end
end
