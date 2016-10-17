require './lib/robot'

describe Robot do

  let(:choice) {double :choice}
  subject(:robot) {described_class.new}

  context 'game is initialised' do
    it 'initialses with an array of weapons' do
      expect(robot.weapons).to eq(['rock', 'paper', 'scissors'])
    end

  it 'give the robot a random choice' do
    robot.randomise_robot
    expect(robot.robot_pick).to eq('rock') | eq('paper') | eq('scissors')
    end
  end
end
