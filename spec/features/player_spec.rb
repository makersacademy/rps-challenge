require 'player'

describe Player do
  subject(:player_one) { described_class.new("Paul")}

  describe '#new' do
    it 'Initializes with a name' do
      expect(player_one.name).to eq "Paul"
    end
    it 'Initializes with a score of 0' do
      expect(player_one.score).to eq 0
    end
  end

  describe '#set_move' do
    it 'Sets move to argument' do
      player_one.set_move("Rock")
      expect(player_one.move).to eq "Rock"
    end
  end

end
