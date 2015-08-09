require 'player'

describe Player do
  let(:opponent) { Player.new }

  it 'has a name' do
    subject.name = 'dan'
    expect(subject.name).to eq 'dan'
  end

  it 'has an opponent' do
    subject.opponent = opponent
    expect(subject.opponent).to be opponent
  end

  describe '#choose_hand' do
    it { is_expected.to respond_to(:choose_hand).with(1).argument }
    it 'can choose hand to play' do
      subject.choose_hand('rock')
      expect(subject.choose_hand('rock')).to eq 'rock'
    end
    it 'should give error if players choice != rock, scissors or paper' do
      expect {subject.choose_hand 'fist'}.to raise_error "Choose only: 'rock', 'paper' or 'scissors'"
    end
  end

  # describe '#winner?' do
  #   xit 'knows when it is the winner' do
  #     allow(opponent).to receive(:winner?).and_return false
  #     expect(subject).to be_winner
  #   end
  # end
end
