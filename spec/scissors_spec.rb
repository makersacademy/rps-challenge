require './app/scissors'

describe Scissors do
  it 'draws against scissors' do
    expect(subject.result_against_scissors).to eq "Scissors draws against scissors"
  end

  it 'loses against rock' do
    expect(subject.result_against_rock).to eq "Rock wins against scissors"
  end

  it 'wins against paper' do
    expect(subject.result_against_paper).to eq "Paper loses against scissors"
  end

  describe '#versus' do
    let(:rock) { double :rock }

    it 'compares itself with opponent' do
      expect(rock).to receive :result_against_scissors
      subject.versus rock
    end
  end

end
