require 'player'

describe Player do
  subject(:player_1) { described_class.new('Josh') }
  subject(:robot) { described_class.new }

  describe '#name' do
    it 'returns the players name' do
      expect(player_1.name).to eq 'Josh'
    end
  end

  describe '#player_2_move' do
    it 'delegates player 2 move to Move class' do
      allow(robot.move).to receive(:player_2_move) { "Rock" }.with("Robot")
      expect(robot.player_2_move).to eq "Rock"
    end
  end

end
