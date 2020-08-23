require 'player'

describe Player do
  subject(:horse) { Player.new('Horse') }
  subject(:narwhal) { Player.new('Narwhal') }
  describe "#init" do
    it "gives default name of Hal3000" do
      player_1 = Player.new
      expect(player_1.name).to eq 'Hal3000'
    end
  end
  

  describe '#name' do
    it 'returns the player name' do
      expect(horse.name).to eq 'Horse'
    end
  end

  describe '#move' do
    it 'returns nil before move' do
      expect(horse.move).to eq nil
    end
    it 'returns the move after it is chosen' do
      horse.move = 'Rock'
      expect(horse.move).to eq 'Rock'
    end
  end
end