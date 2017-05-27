require 'weapon'

describe Weapon do
  subject(:rock) { described_class.new(:rock) }
  subject(:paper) { described_class.new(:paper) }
  subject(:scissors) { described_class.new(:scissors) }

  describe '#beats' do
    it 'rock beats scissors' do
      expect(rock.beats?(scissors)).to eq true
    end

    it 'paper beats rock' do
      expect(paper.beats?(rock)).to eq true
    end

    it 'scissors beats paper' do
      expect(scissors.beats?(paper)).to eq true
    end

    it 'rock does not paper' do
      expect(rock.beats?(paper)).to eq false
    end

    it 'rock does not beat rock' do
      expect(rock.beats?(rock)).to eq false
    end

    it 'paper does not beat scissors' do
      expect(paper.beats?(scissors)).to eq false
    end

    it 'paper does not beat paper' do
      expect(paper.beats?(paper)).to eq false
    end

    it 'scissors does not beat rock' do
      expect(scissors.beats?(rock)).to eq false
    end

    it 'scissors does not beat scissors' do
      expect(scissors.beats?(scissors)).to eq false
    end
  end
end
