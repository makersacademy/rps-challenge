describe Game do
  let(:printer) { double(:printer, print_result: nil) }
  let(:printer_class) { double(new: printer) }
  let(:one_player) { Game.new("Pete", 'one_player') }
  let(:two_player) { Game.new("Pete", 'two_player', 'Tong') }
  let(:steves_game) do
    steves_game = Game.new("Steve", 'one_player')
    steves_game.make_choice("Rock")
    steves_game
  end

  context "on creation, one player mode" do
    it "stores players name" do
      expect(one_player.player_one_name).to eq "Pete"
    end
    it "player two name is Computer" do
      expect(one_player.player_two_name).to eq "Computer"
    end
    it "knows it's in one player mode" do
      expect(one_player.mode).to eq "one_player"
    end
  end

  context "on creation, two player mode" do
    it "stores players name" do
      expect(two_player.player_one_name).to eq "Pete"
    end
    it "player two name is Computer" do
      expect(two_player.player_two_name).to eq "Tong"
    end
    it "knows it's in one player mode" do
      expect(two_player.mode).to eq "two_player"
    end
  end

  # context "on creation, two player mode" do
  #   it "stores both names"
  # end
  describe "storing an instance" do
    it "can store the current game instance as a class instance variable" do
      Game.create("Pete", 'one_player')
      expect(Game.instances.player_one_name).to eq "Pete"
    end
  end

  describe "#make_choice" do
    it "stores the choice" do
      expect(steves_game.player_one_choice).to eq 'Rock'
    end
  end

  describe "#result" do
    context "one player mode, player enters rock" do
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

  describe '#print result' do
    it "tells printer object to print result" do
      srand(9)
      expect(printer).to receive(:print_result).with('Win', 'Steve', 'Computer')
      steves_game.show_result(printer_class)
    end
  end
end
