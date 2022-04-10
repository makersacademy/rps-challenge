require_relative '../lib/computerplayer'

describe ComputerPlayer do

  let(:computer) {described_class.new }
  describe '#initialize' do

    it 'creates computer player object with the name HAL_9000' do
      expect(computer.name).to be :HAL_9000
    end

  end

  describe '#make_selection' do

    it "selects from 'Rock', 'Paper', 'Scissors', 'Spock', 'Lizard'" do
      computer.make_selection
      expect(computer.selection).to be :scissors
    end
  end
end