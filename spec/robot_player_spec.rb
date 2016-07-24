require 'robot_player'

describe RobotPlayer do

  subject(:robot) { described_class.new }

  describe '#name' do
    it 'returns the name Robot' do
      expect(robot.name).to(eq("Robot"))
    end
  end

  describe '#weapon' do
    it 'randomly returns a weapon' do
      allow(Kernel).to(receive(:rand).and_return(1))
      expect(robot.weapon).to(eq("Paper"))
    end
  end

end
