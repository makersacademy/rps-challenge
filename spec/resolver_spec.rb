require 'game'

describe Resolver do

  it { expect(subject).to respond_to(:resolve).with(2).arguments }

  describe '#resolve' do
    context 'when Paper & Paper' do
      it 'returns Draw' do
        expect(subject.resolve(Choices::PAPER, Choices::PAPER)).to eq(Resolver::DRAW)
      end
    end
    context 'when Rock & Rock' do
      it 'returns Draw' do
        expect(subject.resolve(Choices::ROCK, Choices::ROCK)).to eq(Resolver::DRAW)
      end
    end
    context 'when Scissors & Scissors' do
      it 'returns Draw' do
        expect(subject.resolve(Choices::SCISSORS, Choices::SCISSORS)).to eq(Resolver::DRAW)
      end
    end

    context 'when Scissors & Paper' do
      it 'returns Win' do
        expect(subject.resolve(Choices::SCISSORS, Choices::PAPER)).to eq(Resolver::WIN)
      end
    end
  end
end
