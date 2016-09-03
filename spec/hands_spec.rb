require 'hands'

describe Hands do

  subject(:rock) {described_class.new(:rock)}
  subject(:paper) {described_class.new('paper')}
  subject(:scissors) {described_class.new(:scissors)}

  context 'comparing instances' do

    it 'returns rock < paper' do
      expect(rock < paper).to eq true
    end
    it 'returns scissors < rock' do
      expect(scissors < rock).to eq true
    end
    it 'returns paper < scissors' do
      expect(paper < scissors).to eq true
    end

  end

  describe '#plays' do
    it 'returns rock loses to paper' do
      expect(rock.plays(paper)).to eq 'Paper'
    end
    it 'returns scissors < rock' do
      expect(rock.plays(rock)).to eq 'Draw'
    end
    it 'returns paper < scissors' do
      expect(paper.plays(rock)).to eq 'Paper'
    end
  end

end
