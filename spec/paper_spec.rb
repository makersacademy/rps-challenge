require './app/paper'

describe Paper do
  it 'loses against scissors' do
    expect(subject.result_against_scissors).to eq "Scissors wins against paper"
  end

  it 'wins against rock' do
    expect(subject.result_against_rock).to eq "Rock loses against paper"
  end

  it 'draws against paper' do
    expect(subject.result_against_paper).to eq "Paper draws against paper"
  end

  describe '#versus' do
    let(:rock) { double :rock }

    it 'compares itself with opponent' do
      expect(rock).to receive :result_against_paper
      subject.versus rock
    end
  end


end
