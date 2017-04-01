require 'player'

describe Player do
  subject(:rocky) {described_class.new("Rocky")}
  subject(:computer) {described_class.new("computer")}

  describe '#name' do
    it 'returns the name' do
      expect(rocky.name).to eq "Rocky"
    end
  end

  describe '#random_attack' do
    it 'sets up for a paper attack' do
      allow(Kernel).to receive(:rand).and_return(2)
      expect(rocky.paper?).to eq true
    end

    it "does a random paper attack" do
      allow(Kernel).to receive(:random_attack).and_return(2)
      expect(computer.random_attack).to eq "Paper"
    end

  end
end