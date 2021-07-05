require 'player'

describe Player do
  subject(:player_one) { described_class.new("Paul") }

  describe '#new' do
    it 'Initializes with a name' do
      expect(player_one.name).to eq "Paul"
    end
    it 'Initializes with a score of 0' do
      expect(player_one.score).to eq 0
    end
  end

  describe '#assign_move' do
    it 'Assigns move to argument' do
      player_one.assign_move("Rock")
      expect(player_one.move).to eq "Rock"
    end
  end

  describe '#increment_score' do
    it 'Increments the score' do
      player_one.increment_score
      expect(player_one.score).to eq 1
    end
  end

end
