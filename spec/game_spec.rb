describe Game do
  subject(:game1) { Game.new(Player.new)}
  # stub out player.new

  describe '#ai_choice' do
    it "returns ai choice" do
      expect(game1.ai_choice).to eq "Rock"
    end
  end
