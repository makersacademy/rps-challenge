require 'rack/test'

describe RockPaperScissors do
  include Rack::Test::Methods

  def app
    RockPaperScissors
  end

  context "routes" do
    it "displays home page" do
      get "/"
      expect(last_response).to be_ok
      expect(last_response.body).to include "Rock Paper Scissors"
    end

    it "accepts player name and creates game" do
      expect(Game).to receive(:new) do |player_1, player_2|
        expect(player_1.name).to eq "Laura"
      end
      post "/players", :player_1 => "Laura"
    end

    it "displays play game page" do
      get "/play"
      expect(last_response).to be_ok
    end

    it "displays game over page" do
      get "/game_over"
      expect(last_response).to be_ok
    end
  end

end
