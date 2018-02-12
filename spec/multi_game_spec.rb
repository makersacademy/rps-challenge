
describe MultiGame do
  subject(:multi_game) { described_class.new(players) }
  let(:players) { double :players }

  describe "#calculate_result" do
    it 'calculates the result' do
      expect(multi_game.calculate_result("rock", "rock")).to eq "Draw!"
    end
  end
end
