require 'results_calculator'

describe ResultsCalculator do
  let(:computer) { double :computer, choose: "Rock", move: "Rock", name: "Computer" }
  let(:computer_2) { double :computer, choose: "Scissors", move: "Scissors", name: "Computer" }
  let(:user) { double :user, move: "Rock", name: "Player 1" }
  let(:user_2) { double :user, move: "Paper", name: "Player 2" }
  let(:user_3) { double :user, move: "Scissors", name: "Player 3" }

  describe '#result' do
    subject(:comp_game_draw) { described_class.new(user, computer) }
    subject(:comp_game_user_wins) { described_class.new(user, computer_2) }
    subject(:comp_game_comp_wins) { described_class.new(user_2, computer_2) }
    subject(:multi_game_draw) { described_class.new(user, user) }
    subject(:multi_game_player1_wins) { described_class.new(user, user_3) }
    subject(:multi_game_player2_wins) { described_class.new(user, user_2) }
    
    context 'computer game' do
      it 'calculates draw result' do
        expect(comp_game_draw.result).to eq(:tie)
      end

      it 'calculates computer wins outcome' do
        expect(comp_game_comp_wins.result).to eq(:computer_wins)
      end

      it 'calculates user wins outcome' do
        expect(comp_game_user_wins.result).to eq(:player_1_wins)
      end
    end

    context 'multiplayer game' do
      it 'calculates draw results' do
        expect(multi_game_draw.result).to eq(:tie)
      end

      it 'calculates player 1 wins outcome' do
        expect(multi_game_player1_wins.result).to eq(:player_1_wins)
      end

      it 'calculates player 2 wins outcome' do
        expect(multi_game_player2_wins.result).to eq(:player_2_wins)
      end
    end
  end

  describe '#user_move' do
    subject(:game) { described_class.new(user, computer) }
    it "returns the users move" do
      expect(subject.player_1_move).to eq("Rock")      
    end
  end
end
