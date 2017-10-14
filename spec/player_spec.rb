require 'player'
describe Player do

  subject(:p1) { described_class.new("Lucas") }
  subject(:p2) { described_class.new("Jucas") }

  it 'returns p1 name' do
    expect(p1.name).to eq "Lucas"
  end

  it 'returns p2 name' do
    expect(p2.name).to eq "Jucas"
  end

  describe 'RPS' do
    it 'contains Rock' do
      allow(p1).to receive(:move).and_return("Rock")
      expect(p1.move).to eq 'Rock'
    end
    it 'contains Paper' do
      allow(p1).to receive(:move).and_return("Paper")
      expect(p1.move).to eq 'Paper'
    end
    it 'contains Scissors' do
      allow(p1).to receive(:move).and_return("Scissors")
      expect(p1.move).to eq 'Scissors'
    end
  end
end
