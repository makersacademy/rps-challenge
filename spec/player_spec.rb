require 'player'

describe Player do 
  subject(:player) { described_class.new("Tevez") }

  context '.name' do 
    it 'should hold the players name as a string' do 
      expect(player.name).to be_a String
    end 
  end 
end
