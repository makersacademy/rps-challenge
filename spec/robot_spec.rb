require './lib/views/robot'

describe Robot do

  let(:choice) {double :choice}
  subject(:robot) {described_class.new(choice)}

  context 'game is initialised' do
    it 'initialses with an array of weapons' do
      expect(robot.weapons).to eq(['rock', 'paper', 'scissors'])
    end

  it 'give the robot a random choice' do
    expect(game.robot_pick).to eq('rock')|('paper')|('scissors')
    end
  end
