require 'player'

describe Player do

  subject(:player) { Player.new("Mama") }

  describe '#initialize' do
    it 'is initialized with a name' do
      expect(player.name).to eq('Mama')
    end
  end

end