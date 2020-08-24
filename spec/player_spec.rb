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

  describe '#add_move' do
    it 'adds a move recallable with .move' do
      horse.add_move('Rock')
      expect(horse.move).to eq 'Rock'
    end
  end
end