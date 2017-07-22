require 'computer_player'

describe ComputerPlayer do
  subject(:computer) { described_class.new('computer') }
  let(:choices) { ComputerPlayer::CHOICES }

  describe '#choose' do
    3.times do
      it 'randomly chooses rock, paper, or scissors' do
        computer.choose
        expect(choices).to include(computer.choose)
      end
    end
  end
end
