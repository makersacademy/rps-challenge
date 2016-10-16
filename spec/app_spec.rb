require 'rack/test'

describe RockPaperScissors do
  include Rack::Test::Methods

  def app
    RockPaperScissors
  end

  describe "/" do
    it "get request displays home page" do
      get "/"
      expect(last_response).to be_ok
      expect(last_response.body).to include "Rock Paper Scissors"
    end

    it "post request accepts player name and creates game with computer opponent" do
      allow(Game).to receive(:create)
      post "/", :player_name => "Player 1"
      expect(Game).to have_received(:create) do |player_1, player_2|
        expect(player_1.name).to eq "Player 1"
        expect(player_2).to be_a Computer
      end
    end

    it "post request redirects to /play" do
      post "/"
      expect(last_response.redirect?).to be true
      follow_redirect!
      expect(last_request.path).to eq "/play"
    end
  end

  describe "/play" do
    let(:player_1) { Player.new("Player 1") }
    let(:player_2) { Computer.new }
    before do
      Game.create(player_1, player_2)
    end

    it "get request displays play game page" do
      get "/play"
      expect(last_response).to be_ok
      expect(last_response.body).to include "Ready Player 1"
      expect(last_response.body).to include "Choose rock, paper or scissors"
    end

    describe "post requests" do
      it "accepts player's move when rock" do
        expect(player_1).to receive(:make_move).with(:rock)
        post "/play", :move => "rock"
      end

      it "accepts player's move when scissors" do
        expect(player_1).to receive(:make_move).with(:scissors)
        post "/play", :move => "scissors"
      end

      it "accepts player's move when paper" do
        expect(player_1).to receive(:make_move).with(:paper)
        post "/play", :move => "paper"
      end

      it "plays a round of a game" do
        expect(Game.instance).to receive(:play_round)
        post "/play", :move => "rock"
      end

      it "post request redirects to /result" do
        post "/play", :move => "rock"
        expect(last_response.redirect?).to be true
        follow_redirect!
        expect(last_request.path).to eq "/result"
      end
    end
  end

  describe "/result" do
    it "displays game result page" do
      get "/result"
      expect(last_response).to be_ok
    end
    it "displays a draw message when game result is a draw" do
      result = { moves: [:rock, :rock], winner: :draw }
      allow(Game.instance).to receive(:result).and_return result
      get "/result"
      expect(last_response.body).to include "It's a draw!"
    end
    it "displays a player 1 win message when winner is player 1" do
      result = { moves: [:rock, :scissors], winner: :player_1 }
      allow(Game.instance).to receive(:result).and_return result
      get "/result"
      expect(last_response.body).to include "Player 1 wins!"
    end
    it "displays a player 2 win message when winner is player 2" do
      result = { moves: [:rock, :scissors], winner: :player_2 }
      allow(Game.instance).to receive(:result).and_return result
      get "/result"
      expect(last_response.body).to include "Computer wins!"
    end
    it "displays each player's move" do
      result = { moves: [:rock, :scissors], winner: :player_2 }
      allow(Game.instance).to receive(:result).and_return result
      get "/result"
      expect(last_response.body).to include "rock"
      expect(last_response.body).to include "scissors"
    end
  end

end
