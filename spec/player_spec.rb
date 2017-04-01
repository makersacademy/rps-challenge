require 'player'

describe Player do
  subject(:rocky) {described_class.new("Rocky")}

  describe '#name' do
    it 'returns the name' do
      expect(rocky.name).to eq "Rocky"
    end
  end

  describe '#random_attack' do
    it 'does a paper attack' do
      allow(Kernel).to receive(:rand).and_return(3)
      expect(rocky.paper?).to eq true
    end
  end
end