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


end
