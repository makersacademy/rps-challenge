require 'game'
require 'player'

describe Game do 
  let(:player_1) { double('player_1', name: 'Spock', choice: 'rock') }
  let(:player_2) { double('player_2', name: 'Kirk', choice: 'rock') }
  let(:player1) { Player.new("Spock") }
  let(:player2) { Player.new("Kirk") }

  subject(:game) { described_class.new(player1, player2) }

  context '#initialize' do 
    it "initializes with Player as an argument" do 
      allow(game.player_1).to receive(:name)
    end 
  end

  context '#result' do 
    it "returns true if it's a draw" do 
      player1.choice = :rock
      player2.choice = :rock
      expect(game.draw?).to eq true
    end

    it "returns winner" do 
      player1.choice = :rock
      player2.choice = :scissors
      expect(game.result).to eq game.player_1.name
    end
  end
end
