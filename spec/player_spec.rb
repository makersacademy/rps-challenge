describe Player do

  let(:player) { described_class.new('Josh', 'Scissors') }

  describe '#name' do
    it "retrieves the player's name" do
      expect(player.name).to eq 'Josh'
    end
  end

  describe '#selection' do
    it "retrieves the player's name" do
      expect(player.name).to eq 'Josh'
    end
  end

  describe '#selection' do
    it "retrieves the player's selection" do
      expect(player.selection).to eq 'Scissors'
    end
  end

end
