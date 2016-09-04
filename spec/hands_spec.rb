require 'hands'
describe Hands do
  subject(:rock) {described_class.new(:rock)}
  subject(:paper) {described_class.new(:paper)}
  subject(:scissors) {described_class.new(:scissors)}
  subject(:spock) {described_class.new(:spock)}
  subject(:lizard) {described_class.new(:lizard)}
  
  describe '#plays' do
    context 'rock' do
      it { expect(rock.plays(paper)).to eq :loss }
      it { expect(paper.plays(rock)).to eq :win }
      it { expect(rock.plays(scissors)).to eq :win }
      it { expect(scissors.plays(rock)).to eq :loss }
      it { expect(spock.plays(rock)).to eq :win }
      it { expect(rock.plays(spock)).to eq :loss }
      it { expect(lizard.plays(rock)).to eq :loss }
      it { expect(rock.plays(lizard)).to eq :win }
      it { expect(rock.plays(rock)).to eq :draw }
    end
    context 'paper' do
      it { expect(paper.plays(paper)).to eq :draw }
      it { expect(paper.plays(scissors)).to eq :loss }
      it { expect(spock.plays(paper)).to eq :loss }
      it { expect(paper.plays(spock)).to eq :win }
      it { expect(lizard.plays(paper)).to eq :win }
      it { expect(paper.plays(lizard)).to eq :loss }
      it { expect(scissors.plays(paper)).to eq :win }
    end
    context 'scissors' do
      it { expect(scissors.plays(scissors)).to eq :draw }
      it { expect(spock.plays(scissors)).to eq :win }
      it { expect(scissors.plays(spock)).to eq :loss }
      it { expect(lizard.plays(scissors)).to eq :loss }
      it { expect(scissors.plays(lizard)).to eq :win }
    end
    context 'lizard' do
      it { expect(lizard.plays(lizard)).to eq :draw }
      it { expect(spock.plays(lizard)).to eq :loss }
      it { expect(lizard.plays(spock)).to eq :win }
    end
    context 'spock' do
      it { expect(spock.plays(spock)).to eq :draw }
    end
  end
end
