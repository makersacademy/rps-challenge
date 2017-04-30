describe Result do

  describe '#winner' do

    it "returns Draw" do
      result = described_class.new('Scissors', 'Scissors')
      expect(result.winner).to eq :draw
    end

    it "returns Player" do
      result = described_class.new('Paper', 'Rock')
      expect(result.winner).to eq :player
    end

    it "returns Computer" do
      result = described_class.new('Rock', 'Paper')
      expect(result.winner).to eq :computer
    end

    it "returns Player" do
      result = described_class.new('Scissors', 'Paper')
      expect(result.winner).to eq :player
    end

    it "returns Computer" do
      result = described_class.new('Paper', 'Scissors')
      expect(result.winner).to eq :computer
    end

    it "returns Player" do
      result = described_class.new('Rock', 'Scissors')
      expect(result.winner).to eq :player
    end

    it "returns Computer" do
      result = described_class.new('Scissors', 'Rock')
      expect(result.winner).to eq :computer
    end

  end
end
