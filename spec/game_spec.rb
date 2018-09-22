require 'game'

describe Game do
  subject(:game) { described_class.new(player1: player1, player2: player2) }
  let(:player1) { double(:player1, name: 'Player1', choice: :paper) } 
  let(:player2) { double(:player2, name: 'Player2', choice: :rock) } 
 
  context "Player 1's choice is 'paper'.  Player 2's choice is 'rock'.  Player 1 wins." do

    it "Creates a new game with two players" do
      expect(game.player1).to eq(player1)
      expect(game.player2).to eq(player2)    
    end
  
    it "Creates a computer opponent if player2 is empty" do
      new_game = described_class.new(player1: player1)
      expect(new_game.player2).to be_an_instance_of(Player)
    end
  
    describe '#return_winner' do
      it 'returns the name of the winning player' do
        expect(game.return_winner).to eq(player1.name)
      end
    end

  end

  context "Player 1's choice is 'rock'.  Player 2's choice is 'paper'.  Player 2 wins." do
    let(:player1) { double(:player1, name: 'Player1', choice: :rock) } 
    let(:player2) { double(:player2, name: 'Player2', choice: :paper) }

    describe '#return_winner' do
      it 'returns the name of the winning player' do
        new_game = described_class.new(player1: player1, player2: player2)
        expect(game.return_winner).to eq(player2.name)
      end
    end

  end

end
