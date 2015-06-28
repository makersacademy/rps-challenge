require './app/paper'

describe Paper do
  it 'loses against scissors' do
    expect(subject.result_against_scissors).to eq "scissors wins"
  end

  it 'wins against rock' do
    expect(subject.result_against_rock).to eq "rock loses"
  end

  it 'draws against paper' do
    expect(subject.result_against_paper).to eq "paper draws"
  end

  describe '#versus' do
    let(:rock) { double :rock, result_against_paper: 'paper loses' }
    it 'compares itself with opponent' do
      expect(rock).to receive :result_against_paper
      subject.versus rock
    end
  end


end
