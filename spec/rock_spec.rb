require './app/rock'

describe Rock do
  it 'loses against paper' do
    expect(subject.result_against_paper).to eq "Paper wins against rock"
  end

  it 'wins against scissors' do
    expect(subject.result_against_scissors).to eq "Scissors loses against rock"
  end

  it 'draws against rock' do
    expect(subject.result_against_rock).to eq "Rock draws against rock"
  end

  xit 'can be updated with result against new signs' do

  end

  describe '#versus' do
    let(:paper) { double :paper }

    it 'compares itself with opponent' do
      expect(paper).to receive :result_against_rock
      subject.versus paper
    end
  end

end
