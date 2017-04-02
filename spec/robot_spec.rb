require 'robot'

describe Robot do

  subject(:robot) { described_class.new }

  describe '#set_hand' do
      it 'sets the robot hand to a random hand from the rules' do
        robot.set_hand
        expect(robot.hand).to be_kind_of(Hand)
      end
  end

end
