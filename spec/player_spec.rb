require 'player'

describe Player do
  #below is just another way of instantiating a new instance of a class,
  #just like Clodius = Player.new - basically a beforeEach? 
  let(:player) { described_class.new('Clodius') }
    describe('name') do
      it "should return player's name" do
        expect(player.name).to eq('Clodius')
      end
    describe('select_weapon') do
      it "should return player's weapon" do
        player.select_weapon('rock')
        expect(player.weapon).to eq('rock')
      end
    end
  end
end
