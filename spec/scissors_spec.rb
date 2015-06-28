require './app/scissors'

describe Scissors do
  it 'draws against scissors' do
    expect(subject.result_against_scissors).to eq "scissors draws"
  end

  it 'loses against rock' do
    expect(subject.result_against_rock).to eq "rock wins"
  end

  it 'wins against paper' do
    expect(subject.result_against_paper).to eq "paper loses"
  end

  describe '#versus' do
    let(:rock) { double :rock, result_against_scissors: 'scissors loses' }
    it 'compares itself with opponent' do
      expect(rock).to receive :result_against_scissors
      subject.versus rock
    end
  end

end
