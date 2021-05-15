require 'player'

describe Player do
  subject { described_class.new('Bob') }

  describe '#name' do
    it 'returns the players name' do
      expect(subject.name).to eq('Bob')
    end
  end

  describe '#select_random' do
    it 'returns a random choice of rock, paper or scissors' do
      srand(1234)
      # rand(3) returns 2 so 'scissors' is always returned from array of options
      expect(subject.select_random).to eq('Scissors')
    end
  end

  describe '#choose' do
    context 'when user enters rock' do
      it "returns win" do
        srand(1234)
        expect(subject.choose('Rock')).to eq('win')     
      end
    end
    context 'when user enters paper' do
      it "returns lose" do
        srand(1234)
        expect(subject.choose('Paper')).to eq('lose')
      end
    end
    context 'when user enters scissors' do
      it "returns draw" do
        srand(1234)
        expect(subject.choose('Scissors')).to eq('draw')
      end
    end
  end
end