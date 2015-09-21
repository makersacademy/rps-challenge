require 'game'

describe Game do

  let(:player1)  { double :player, choose: :rock, name: :Ben }
  let(:player2)  { double :player2, choose: :paper, name: :John }
  let(:player3)  { double :player3, choose: :scissors, name: :Tom }

  let(:computer) { double :computer, choose: :paper }
  let(:game_type) { double :game_type }

  context '#play' do
    it 'the computer can beat the player' do
      allow(game_type).to receive(:game).and_return(paper: :rock)
      game = Game.new(player1, computer, game_type)
      expect(game.play :rock).to eq 'You lose, Ben!'
    end

    it 'can be a draw' do
      allow(game_type).to receive(:game).and_return(paper: :rock)
      game = Game.new(player2, computer, game_type)
      expect(game.play :paper).to eq "It's a draw!"
    end

    it 'the player can beat the computer' do
      allow(game_type).to receive(:game).and_return(scissors: :paper)
      game = Game.new(player3, computer, game_type)
      expect(game.play :scissors). to eq "Tom wins!"
    end
  end

end
