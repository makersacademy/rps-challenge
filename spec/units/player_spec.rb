require './lib/player.rb'

describe Player do
  subject(:sam) { Player.new("Sam") }

  describe '#name' do
    it 'should return the name' do
      expect(sam.name).to eq("Sam")
    end
  end
end
