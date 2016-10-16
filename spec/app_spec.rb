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

    it "post request accepts player name and creates game" do
      allow(Game).to receive(:create)
      post "/", :player_1 => "Player 1"
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
    before do
      @player_1 = Player.new("Player 1")
      Game.create(@player_1, nil)
    end

    it "get request displays play game page" do
      get "/play"
      expect(last_response).to be_ok
      expect(last_response.body).to include "Ready Player 1"
      expect(last_response.body).to include "Choose rock, paper or scissors"
    end

    describe "post requests" do

      it "accepts player's move when rock" do
        expect(@player_1).to receive(:make_move).with("rock")
        post "/play", :move => "rock"
      end

      it "accepts player's move when scissors" do
        expect(@player_1).to receive(:make_move).with("scissors")
        post "/play", :move => "scissors"
      end

      it "accepts player's move when paper" do
        expect(@player_1).to receive(:make_move).with("paper")
        post "/play", :move => "paper"
      end

      it "plays the game" do
        expect(Game.instance).to receive(:play)
        post "/play"
      end
    end
  end

  describe "/game_over" do
    it "displays game over page" do
      get "/game_over"
      expect(last_response).to be_ok
      expect(last_response.body).to include "Game Over"
    end
  end

end
