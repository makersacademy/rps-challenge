require 'player'

describe Player do
  subject(:player_1) { described_class.new('Josh') }
  subject(:robot) { described_class.new }

  describe '#name' do
    it 'returns the players name' do
      expect(player_1.name).to eq 'Josh'
    end
  end

  describe '#move' do
    it 'creates a random move if it is a robot' do
      allow(robot).to receive(:random_move) { "Rock" }
      expect(robot.move).to eq "Rock"
    end
  end

end
