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
      expect(one_player.player1).to eq "Pete"
    end
    it "player two name is Computer" do
      expect(one_player.player2).to eq "Computer"
    end
    it "knows it's in one player mode" do
      expect(one_player.mode).to eq "one_player"
    end
  end

  context "on creation, two player mode" do
    it "stores players name" do
      expect(two_player.player1).to eq "Pete"
    end
    it "player two name is Computer" do
      expect(two_player.player2).to eq "Tong"
    end
    it "knows it's in one player mode" do
      expect(two_player.mode).to eq "two_player"
    end
  end

  # context "on creation, two player mode" do
  #   it "stores both names"
  # end
  describe "storing an instance" do
    context "one player mode" do
      it "can store the current game instance as a class instance variable" do
        Game.create("Pete", 'one_player')
        expect(Game.instances.player1).to eq "Pete"
      end
    end
    context 'two player mode' do
      it 'stores the game' do
        Game.create("Dave", "two_player", "Jerry")
        expect(Game.instances.player2).to eq "Jerry"
      end
    end
  end

  describe "#make_choice" do
    context 'one_player_mode' do
      it "stores the choice" do
        expect(steves_game.player1_choice).to eq 'Rock'
      end
    end
    context 'two_player_mode' do
      it "stores both choices" do
        two_player.make_choice('Rock')
        two_player.make_choice('Paper')
        expect(two_player.player2_choice).to eq 'Paper'
      end
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
    context 'two player mode' do
      it 'uses player 2s choice rather than computer' do
        two_player.make_choice('Scissors')
        two_player.make_choice('Scissors')
        expect(two_player.result).to eq 'Draw'
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

  describe 'turns' do
    context 'two player games' do
      it 'starts as player 1s turn initially' do
        expect(two_player.turn).to eq 'Pete'
      end
      it 'and player 2 is not on turn' do
        expect(two_player.not_turn).to eq 'Tong'
      end
      it 'swiches once player 1 has made a choice' do
        two_player.make_choice('Rock')
        expect(two_player.turn).to eq 'Tong'
      end
    end
  end

  describe '#game_over' do
    context 'one player mode' do
      it "starts off as false" do
        expect(one_player.game_over).to eq false
      end
      it "is true after player one makes a choice" do
        expect(steves_game.game_over).to eq true
      end
    end
    context 'two player mode' do
      it "isn't over until both players have made a choice" do
        two_player.make_choice('Rock')
        expect(two_player.game_over).to eq false
      end
      it "is over once both players have made a choice" do
        two_player.make_choice('Rock')
        two_player.make_choice('Paper')
        expect(two_player.game_over).to eq true
      end
    end
  end
end
