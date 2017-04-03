require 'robot'

describe Robot do

  subject(:robot) { described_class.new }

  describe '#set_hand' do
    it 'sets a random hand' do
      srand(67809)
      robot.set_hand
      expect(robot.hand).to eq :spock
    end
  end

end
