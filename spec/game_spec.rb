describe Game do
  let(:petes_game) { Game.new("Pete") }
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
      petes_game.make_choice('Rock')
      expect(petes_game.player_choice).to eq 'Rock'
    end
  end

  describe "#result" do
    context "player lost" do
      it "returns Loose" do
        petes_game.make_choice('Rock')
        expect(petes_game.result).to eq 'Loose'
      end
    end
    context 'player drew' do
      it 'returns Draw' do
        petes_game.make_choice('Paper')
        expect(petes_game.result).to eq 'Draw'
      end
    end
    context 'player won' do
      it 'returns Won' do
        petes_game.make_choice('Scissors')
        expect(petes_game.result).to eq 'Win'
      end
    end
  end
end
