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
    context 'when Scissors & Rock' do
      it 'returns Win' do
        expect(subject.resolve(Choices::SCISSORS, Choices::ROCK)).to eq(Resolver::LOOSE)
      end
    end
    context 'when Paper & Rock' do
      it 'returns Win' do
        expect(subject.resolve(Choices::PAPER, Choices::ROCK)).to eq(Resolver::WIN)
      end
    end
    context 'when Paper & Scissors' do
      it 'returns Win' do
        expect(subject.resolve(Choices::PAPER, Choices::SCISSORS)).to eq(Resolver::LOOSE)
      end
    end
    context 'when Rock & Scissors' do
      it 'returns Win' do
        expect(subject.resolve(Choices::ROCK, Choices::SCISSORS)).to eq(Resolver::WIN)
      end
    end
    context 'when Rock & Paper' do
      it 'returns Win' do
        expect(subject.resolve(Choices::ROCK, Choices::PAPER)).to eq(Resolver::LOOSE)
      end
    end
  end
end
