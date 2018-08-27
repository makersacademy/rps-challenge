describe Game do
  subject(:game1) { Game.new(Player.new('samir'))}
  # stub out player.new

  describe '#ai_choice' do
    it "returns ai choice" do
      srand(67809)
      expect(game1.ai_choice).to eq "Scissors"
    end
  end
end
