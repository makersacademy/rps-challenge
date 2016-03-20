require 'game.rb'
require 'player.rb'

describe Game do

  subject(:game){ described_class.new(player) }
  let(:player){ double :Player }

  describe "#initialize" do
    it 'takes a player object' do
      expect(game.player_1).to eq player
    end
  end

  describe "#rps" do
    it 'calculates a win' do
      expect(game.rps(:scissors, :paper)).to eq :win
    end

    it 'calculates a loss' do
      expect(game.rps(:rock, :paper)).to eq :lose
    end

    it 'calculates a draw' do
      expect(game.rps(:paper, :paper)).to eq :draw
    end
  end

  describe "#randrps" do
    it 'gives a random result' do
      allow_any_instance_of(Array).to receive(:sample){:rock}
      expect(game.randrps).to eq :rock
    end
  end

  describe "#ai_image" do
    it 'returns a path for local image for AI' do
      expect(game.ai_image.to_s).to include "images/"
    end
  end

  describe "#result_image" do
    it 'returns a path for a local image of the RPS result' do
      allow(game).to receive(:latest_result){"rock"}
      expect(game.result_image.to_s).to include "images/#{game.latest_result}"
    end
  end

  describe "#player_1_image" do
    it 'returns a path for a local image of player 1\'s choice' do
      allow(game).to receive(:player_1_choice){"rock"}
      expect(game.player_1_image.to_s).to include "images/#{game.player_1_choice}"
    end
  end

  describe "#player_2_image" do
    it 'returns a path for a local image of player 2\'s choice' do
      allow(game).to receive(:player_2_choice){"rock"}
      expect(game.player_2_image.to_s).to include "images/#{game.player_2_choice}"
    end
  end


end
