require 'player'

describe Player do
  subject(:Harry) { described_class.new("Harry") }
  
  describe '#name' do
    it 'returns player name' do
      expect(subject.name).to eq("Harry")
    end
  end

  describe '#choose' do
    it 'saves move of choice' do
      subject.choose("Paper")
      expect(subject.move).to eq("Paper")
    end
  end
end
