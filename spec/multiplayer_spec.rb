require 'multiplayer'

describe Multiplayer do

  let(:player1) { double :player1, name: :Ben, choose: :rock }
  let(:player2) { double :player2, name: :John, choose: :paper }
  let(:player3) { double :player3, name: :David, choose: :scissors }
  let(:player4) { double :player4, name: :Peter, choose: :scissors }
  context '#play' do

    it 'player2 will beat player1' do
      game = Multiplayer.new player1, player2
      expect(game.play :rock, :paper).to eq 'John wins!'
    end

    it 'player1 will beat player 3' do
      game = Multiplayer.new player1, player3
      expect(game.play :rock, :scissors).to eq "Ben wins!"
    end

    it 'can be a draw' do
      game = Multiplayer.new player3, player4
      expect(game.play :scissors, :scissors).to eq "It's a draw!"
    end
  end


end
