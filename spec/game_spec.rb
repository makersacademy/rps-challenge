require './lib/game'

describe Game do
  subject(:game){described_class.new("Lauren", "Andrew")}

  describe "#set_player1_choice" do
    it "sets the relavent attribute" do
      game.player1.set_choice(:Rock)
      expect(game.player1.choice).to eq :Rock
    end
  end

  describe '#player1_choice' do
    it "returns correct value" do
      game.player1.set_choice(:Rock)
      expect(game.player1.choice).to eq :Rock
    end
  end

  describe '#player2_choice' do
    it "returns correct value" do
    game.player2.set_choice(:Rock)
    expect(game.player2.choice).to eq :Rock
  end
  end

  describe "#winner" do
      it 'calculates the correct winner' do
        game.player1.set_choice(:Paper)
        game.player2.set_choice(:Rock) #rock
        expect(game.winner).to eq 'Player 1'
      end
      it 'calculates the correct winner' do
        game.player1.set_choice(:Rock)
        game.player2.set_choice(:Paper) #paper
        expect(game.winner).to eq 'Player 2'
      end
      it 'calculates the correct winner' do
        game.player1.set_choice(:Rock)
        game.player2.set_choice(:Scissors) #paper
        expect(game.winner).to eq 'Player 1'
      end
      it 'calculates the correct winner' do
        game.player1.set_choice(:Scissors)
        game.player2.set_choice(:Paper) #paper
        expect(game.winner).to eq 'Player 1'
      end
      it 'calculates the correct winner' do
        game.player1.set_choice(:Scissors)
        game.player2.set_choice(:Scissors) #paper
        expect(game.winner).to eq 'No one'
      end


  end

end
