require 'player'

describe Player do

  subject(:player) { described_class.new "Josie" }

  context 'Player initializes with:' do
    it "a name" do
      expect(player.name).to eq "Josie"
    end
    it "zero score" do
      expect(player.score).to eq 0
    end
  end

  describe '.selected' do
    it 'updates move with selected move' do
      player.selected 'paper'
      expect(player.move).to eq 'paper'
    end
  end

  describe '.random' do
    it 'randomly selects rock' do
      srand(2)
      expect(player.random_move).to eq '👊🏼'
    end
    it 'randomly selects paper' do
      srand(10)
      expect(player.random_move).to eq '🤚🏼'
    end
    it 'randomly selects scissors' do
      srand(3)
      expect(player.random_move).to eq '✌🏼'
    end
  end
  # add test for selected move
  # add test for random move

end
