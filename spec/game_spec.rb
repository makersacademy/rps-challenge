require 'game'

describe Game do
  subject(:game) { described_class.new(player1: player1, player2: player2) }
  let(:player1) { double :player1, name: 'Player 1', choice: p1_choice, computer?: false }
  let(:player2) { double :player2, name: 'Player 2', choice: p2_choice, computer?: p2_computer }
  let(:p1_choice) { :rock }
  let(:p2_choice) { :paper }

  context "Both players are humans" do
    let(:p2_computer) { false }

    it "creates a new game with two players" do
      expect(game.player1).to eq(player1)
      expect(game.player2).to eq(player2)    
    end

    context "Player 1's choice is 'Rock', Player 2's choice is 'Paper, Player 1 is a human player'" do
    
      describe '#return_winner' do
        it 'returns the name of Player 2 as the winning player' do
          expect(game.return_winner).to eq(player2)
        end
      end
  
    end

    context "Player 1's choice is 'Paper', Player 2's choice is 'Rock'" do
    
      describe '#return_winner' do
        let(:p1_choice) { :paper } 
        let(:p2_choice) { :rock } 
        it 'returns the name of Player 1 as the winning player' do 
          expect(game.return_winner).to eq(player1)
        end
      end
  
    end
  
    context "Players have made the same choice" do
      let(:p1_choice) { :rock } 
      let(:p2_choice) { :rock } 
      it "returns nil when both players have made the same choice" do
        expect(game.return_winner).to eq(nil)
      end
    end

  end

  context "Player 2 is a computer" do
    subject(:game_with_computer) { described_class.new(player1: player1) }

    it 'creates a computer opponent if player one is empty' do
      expect(game_with_computer.player2).to be_an_instance_of(Player)
    end

    describe '#return_winner' do
      it 'gets a weapon choice for the computer' do
        expect(game_with_computer.player2).to receive(:computer_move)
        game_with_computer.return_winner
      end
    end

  end

end
