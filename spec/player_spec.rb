require 'player'

describe Player do
  subject(:simone) {Player.new('Simone')} #Creates an instance of player, and passes the argument :dave with the string "Dave"

  describe '#name' do
    it 'returns the name' do
      expect(simone.name).to eq 'Simone'
    end
   end
 end
