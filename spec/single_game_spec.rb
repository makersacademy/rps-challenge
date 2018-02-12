describe SingleGame do
  subject(:single_game) { described_class.new(player_1) }
  let(:player_1) { double :player }


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
end
