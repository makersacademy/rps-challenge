
describe MultiGame do
  subject(:multi_game) { described_class.new(players) }
  let(:players) {double :players}
  # let(:players) { double(('Justyna', name: 'Justyna', weapon: 'rock'), ('Igor', name: 'Igor', weapon: 'scissors'))}


  describe "#calculate_result" do
    it 'calculates the draw' do
      expect(multi_game.calculate_result("rock", "rock")).to eq "Draw!"
    end
    it 'calculates the win' do
      expect(multi_game.calculate_result("rock", "rock")).to eq "Draw!"
    end

  end

end
