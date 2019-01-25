describe Game do
  let(:petes_game) { Game.new("Pete") }
  let(:steves_game) do
    steves_game = Game.new("Steve")
    steves_game.make_choice("Rock")
    steves_game
  end

  context "on creation" do
    it "stores players name" do
      expect(Game.new("Pete").player_name).to eq "Pete"
    end
  end
  describe "storing an instance" do
    it "can store the current game instance as a class instance variable" do
      Game.create("Pete")
      expect(Game.instances.player_name).to eq "Pete"
    end
  end

  describe "#make_choice" do
    it "stores the choice" do
      expect(steves_game.player_choice).to eq 'Rock'
    end
  end

  describe "#result" do
    context "player enters rock" do
      it "can randomly return Loose" do
        srand(9)
        expect(steves_game.result).to eq 'Win'
      end
      it 'can randomly return Draw' do
        srand(12_314)
        expect(steves_game.result).to eq 'Loose'
      end
      it 'can randomly return Won' do
        srand(8)
        expect(steves_game.result).to eq 'Draw'
      end
    end
  end
end
