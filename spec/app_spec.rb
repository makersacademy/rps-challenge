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
      allow(Game).to receive(:new)
      post "/", :player_1 => "Laura"
      expect(Game).to have_received(:new) do |player_1, player_2|
        expect(player_1.name).to eq "Laura"
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
    it "displays play game page" do
      get "/play"
      expect(last_response).to be_ok
    end
  end

  describe "/game_over" do
    it "displays game over page" do
      get "/game_over"
      expect(last_response).to be_ok
    end
  end

end
