require 'rps_game'
describe RpsGame do
  let(:player1) { double(:player, :name => "p1", :chooses => :rock, :turn_choice => :rock, :player1_wins? => false, :wins => nil, :win_counts => 0) }
  let(:player2) { double(:player, :name => "p2", :chooses => :paper, :turn_choice => :paper, :player2_wins? => true, :wins => nil, :win_counts => 1) }
  let(:bot) { double(:bot, :instance_of? => true, :chooses => :rock) }
  let(:single_player_game) { RpsGame.new(player1, bot) }
  let(:game) { RpsGame.new(player1, player2) }
  
  describe "::new" do
    it "should initialize an array with players" do
      expect(game.players.size).to eq 2
    end

    it "round should be zero" do
      expect(game.round).to eq 0
    end
  end

  describe "::create_game" do
    it "should initialize a new instance of game" do
      expect(RpsGame.create_game(player1, player2)).to be_a(RpsGame)
    end
  end

  describe "::current_game" do
    it "should return an instance of game" do
      expect(RpsGame.current_game).to be_a(RpsGame)
    end
  end

  describe "#multiplayer?" do
    it "should return true if player2 is not an artificial player" do
      expect(game.multiplayer?).to eq true
    end
    it "should return false if player2 is an artificial player" do  
      expect(single_player_game.multiplayer?).to eq false
    end
  end

  describe "#make_bot_choose" do
    it "should return rock" do
      expect(single_player_game.make_bot_choose).to eq :rock
    end
  end

  describe "#decide_winner" do
    context "player2 wins" do
      it "should return a string of the winner according to each players choices" do
        expect(game.decide_winner).to eq "p2 with paper won p1 with rock"
      end
    end
  end

  describe "#display_final_results" do
    it " should display the winning points after the game is over" do
      expect(game.display_final_results).to eq "p1: 0 wins <br> p2: 1 wins"
    end
  end

  describe "#player1" do
    it "it should return the first object of the array players" do
      expect(game.player1).to eq player1
    end
  end

  describe "#player2" do
    it "it should return the last object of the array players" do
      expect(game.player2).to eq player2
    end
  end

  describe "#increase_round_counter" do
    it "increases round by 1" do
      expect { game.increase_round_counter }.to change { game.round }.by 1
    end
  end

  describe "#reset_round_counter" do
    it "should reset round to zero" do
      game.increase_round_counter
      game.reset_round_counter
      expect(game.round).to eq 0
    end
  end

  describe "#multiplayer_link" do
    context "multiplayer game" do
      it "should return '/play'" do
        game.increase_round_counter
        expect(game.multiplayer_link).to eq "/play"
      end
    end
    context "single player game" do
      it "should return '/results'" do
        expect(single_player_game.multiplayer_link).to eq "/results"
      end
    end
  end
end
