require 'player'

describe Player do
  describe '#wins' do
    let(:player1) { Player.new("Gordon") }

    it "increases the players score when called" do
      expect { player1.wins }.to change { player1.score }.by(1) 
    end
  end
end
