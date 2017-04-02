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
    it "does a random rock attack" do
      allow(computer).to receive(:roll).and_return 2
      expect(computer.random_attack).to eq "Rock"
    end

    it "does a random paper attack" do
      allow(computer).to receive(:roll).and_return 1
      expect(computer.random_attack).to eq "Paper"
    end

    it "does a random scissors attack" do
      allow(computer).to receive(:roll).and_return 0
      expect(computer.random_attack).to eq "Scissors"
    end
  end
end