require 'move'

describe Move do

  subject(:robot_move) { described_class.new }

  describe '#player_2_move' do
    it 'creates a random move if player is a robot' do
      allow(robot_move).to receive(:random_move) { "Rock" }
      expect(robot_move.player_2_move("Robot")).to eq "Rock"
    end
  end

end
