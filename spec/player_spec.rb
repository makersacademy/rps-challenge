describe Player do
  subject(:neil) { Player.new("Neil")}
  describe '#name' do
    it 'returns name of player' do
      expect(neil.name).to eq "Neil"
    end
  end
end
