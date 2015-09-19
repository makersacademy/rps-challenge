require 'game'

describe Game do

  let(:player1)  { double :player, choose: :rock, name: :Ben }
  let(:player2)  { double :player2, choose: :paper, name: :John }
  let(:player3)  { double :player3, choose: :scissors, name: :Tom }

  let(:computer) { double :computer, choose: :paper }

  context '#play' do
    it 'the computer can beat the player' do
      game = Game.new(player1, computer)
      expect(game.play :rock).to eq 'You lose, Ben!'
    end

    it 'can be a draw' do
      game = Game.new(player2, computer)
      expect(game.play :paper).to eq "It's a draw!"
    end

    it 'the player can beat the computer' do
      game = Game.new(player3, computer)
      expect(game.play :scissors). to eq "Tom wins!"
    end
  end

end
