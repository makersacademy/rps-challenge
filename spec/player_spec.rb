describe Player do
  let(:name) {double(:name)}
  let(:player) {described_class.new(name)}
  let(:rock) {double(:rock)}
  describe '#choose' do
    it 'Takes an argument and changes choice' do
      player.choose(rock)
      expect(player.choice).to eq rock
    end
  end

end
