require './lib/game'

describe Game do
  subject(:game){described_class.new}

  describe "#set_player1_choice" do
    it "sets the relavent attribute" do
      game.set_player1_choice(:Rock)
      expect(game.player1_choice).to eq :Rock
    end
  end

  describe "#winner" do
      it 'calculates the correct winner' do
        game.set_player1_choice(:Paper)
        game.set_player2_choice(:Rock) #rock
        expect(game.winner).to eq 'Player 1'
      end
      it 'calculates the correct winner' do
        game.set_player1_choice(:Rock)
        game.set_player2_choice(:Paper) #paper
        expect(game.winner).to eq 'Player 2'
      end
      it 'calculates the correct winner' do
        game.set_player1_choice(:Rock)
        game.set_player2_choice(:Scissors) #paper
        expect(game.winner).to eq 'Player 1'
      end
      it 'calculates the correct winner' do
        game.set_player1_choice(:Scissors)
        game.set_player2_choice(:Paper) #paper
        expect(game.winner).to eq 'Player 1'
      end
      it 'calculates the correct winner' do
        game.set_player1_choice(:Scissors)
        game.set_player2_choice(:Scissors) #paper
        expect(game.winner).to eq 'No one'
      end


  end

end
