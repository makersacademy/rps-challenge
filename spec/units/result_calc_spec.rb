require 'result_calc'

describe ResultCalc do
  it { is_expected.to respond_to(:result).with(2).arguments }
  describe '#result' do
    it 'returns draw on same inputs' do
      expect(subject.result('Rock','Rock')).to eq 'YOU HAVE DRAWN'
    end
    it 'returns player 1 wins when a should beat b' do
      expect(subject.result('Rock','Scissors')).to eq 'YOU HAVE WON'
      expect(subject.result('Paper','Rock')).to eq 'YOU HAVE WON'
      expect(subject.result('Scissors','Paper')).to eq 'YOU HAVE WON'
    end
    it 'returns computer wins when b should beat a' do
      expect(subject.result('Scissors','Rock')).to eq 'YOU HAVE LOST'
      expect(subject.result('Rock','Paper')).to eq 'YOU HAVE LOST'
      expect(subject.result('Paper','Scissors')).to eq 'YOU HAVE LOST'
    end
  end
end