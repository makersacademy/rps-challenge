require 'player'

describe Player do
  let(:player1) { Player.new("Gordon") }
  describe '#wins' do
    it "increases the players score when called" do
      expect { player1.wins }.to change { player1.score }.by(1) 
    end
  end

  describe '#next_move' do
    it 'takes a arg and returns the arg' do
      expect(player1.next_move(2)).to be(2)
    end
  end
end
