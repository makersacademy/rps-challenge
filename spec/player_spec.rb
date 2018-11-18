require 'player'

describe Player do

  subject(:player) { Player.new('Tomas') }

  describe '#name' do
    it 'returns the name' do
     expect(player.name).to eq 'Tomas'
    end
  end

  describe '#self.instance' do
     it 'allows access to an instance of Player' do
       player = Player.register("Tomas")
       expect(Player.instance).to eq player
     end
   end

   describe '#self.register' do
     it 'registers a new player' do
       player = Player.register("Tomas")
       expect(player).to eq player
     end
   end
 end
