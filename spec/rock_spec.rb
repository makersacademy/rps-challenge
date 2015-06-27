require 'rock'

describe Rock do
  it 'loses against paper' do
    expect(subject.result_against_paper).to eq "paper wins"
  end

  it 'wins against scissors' do
    expect(subject.result_against_scissors).to eq "scissors loses"
  end

  it 'draws against rock' do
    expect(subject.result_against_rock).to eq "rock draws"
  end

  describe '#versus' do
    let(:paper) { double :paper, result_against_rock: 'rock loses' }
    it 'compares itself with opponent' do
      expect(paper).to receive :result_against_rock
      subject.versus paper
    end
  end

end
