require 'game'

describe Game do
  subject(:game) { described_class.new(player1: player1, player2: player2) }
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }
    
  describe '#return_winner' do
    context "Player1's choice is 'paper'. Player2's choice is 'rock'. Player1 wins." do
      let(:player1) { double(:player1, name: 'Player1', choice: :paper) } 
      let(:player2) { double(:player2, name: 'Player2', choice: :rock, computer?: false) } 

      it 'returns the name of Player1 as the winning player' do
        new_game = described_class.new(player1: player1, player2: player2)
        expect(game.return_winner).to eq(player1.name)
      end
    end
    context "Player1's choice is 'rock'. Player2's choice is 'paper'. Player2 wins." do
      let(:player1) { double(:player1, name: 'Player1', choice: :rock) } 
      let(:player2) { double(:player2, name: 'Player2', choice: :paper, computer?: false) }

      it 'returns the name of Player2 as the winning player' do
        new_game = described_class.new(player1: player1, player2: player2)
        expect(game.return_winner).to eq(player2.name)
      end
    end
    context "Players have made the same choice" do
      let(:player1) { double(:player1, name: 'Player1', choice: :rock) } 
      let(:player2) { double(:player2, name: 'Player2', choice: :rock, computer?: false) }
      it "returns 'Draw' when both players have made the same choice" do
        expect(game.return_winner).to eq(nil)
      end
    end

  end

  context 'Both players are humans' do

    it "creates a new game with two players" do
      expect(game.player1).to eq(player1)
      expect(game.player2).to eq(player2)    
    end

  end

  context 'Player2 is a computer' do
    let(:game_computer) { described_class.new(player1: player1)}
    let(:player1) { double(:player1, name: 'Player1', choice: :paper) } 
    let(:computer_player) { double(:computer_opponent, computer?: true, computer_move: nil, choice: :rock) }

    it "creates a computer opponent if player2 is empty" do
      expect(game_computer.player2).to be_an_instance_of(Player)
    end

    describe '#return_winner' do
      it 'makes a move for the computer' do
        new_game = described_class.new(player1: player1, player2: computer_player)
        expect(new_game.return_winner).to eq(player1.name)
      end
    end

  end

end
