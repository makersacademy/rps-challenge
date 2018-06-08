describe SingleGame do
  subject(:single_game) { described_class.new(player_1) }
  let(:player_1) { double :player, name: "Justyna" }


  describe "#player" do
    it 'gets the player' do
      expect(single_game.player).to eq player_1
    end
  end

  describe "#computer_weapon" do
    it 'gets a weapon at random' do
      allow(single_game).to receive(:computer_weapon).and_return("scissors")
      expect(single_game.computer_weapon).to eq "scissors"
    end
  end

  describe "#calculate_result" do
    it 'calculates the draw' do
      expect(single_game.calculate_result("rock", "rock")).to eq "Draw!"
    end
    it 'calculates the win' do
      expect(single_game.calculate_result("rock", "paper")).to eq "Justyna won"
    end
  end

end
