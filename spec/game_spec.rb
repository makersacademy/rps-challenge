describe SingleGame do
  subject(:single_game) { described_class.new(player_1) }
  let(:player_1) { double :player }


  describe "#player" do
    it 'gets the player' do
      expect(single_game.player).to eq player_1
    end
  end

end
