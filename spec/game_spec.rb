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
      it 'Paper covers rock' do
        game.player1.set_choice(:Paper)
        game.player2.set_choice(:Rock) #rock
        expect(game.winner).to eq 'Player 1'
      end
      it 'Rock crushes scissors' do
        game.player1.set_choice(:Rock)
        game.player2.set_choice(:Scissors) #paper
        expect(game.winner).to eq 'Player 1'
      end
      it 'Scissors cuts papers' do
        game.player1.set_choice(:Scissors)
        game.player2.set_choice(:Paper) #paper
        expect(game.winner).to eq 'Player 1'
      end
      it 'Same choice ties' do
        game.player1.set_choice(:Scissors)
        game.player2.set_choice(:Scissors) #paper
        expect(game.winner).to eq 'No one'
      end
      it 'Rock crushes lizard' do
        game.player1.set_choice(:Rock)
        game.player2.set_choice(:Lizard) #paper
        expect(game.winner).to eq 'Player 1'
      end
      it 'lizard poisons' do
        game.player1.set_choice(:Lizard)
        game.player2.set_choice(:Spock) #paper
        expect(game.winner).to eq 'Player 1'
      end
      it 'Spock smashes scissors' do
        game.player1.set_choice(:Spock)
        game.player2.set_choice(:Scissors) #paper
        expect(game.winner).to eq 'Player 1'
      end
      it 'Scissors decapitates lizard' do
        game.player1.set_choice(:Scissors)
        game.player2.set_choice(:Lizard) #paper
        expect(game.winner).to eq 'Player 1'
      end
      it 'Lizard eats paper' do
        game.player1.set_choice(:Lizard)
        game.player2.set_choice(:Paper) #paper
        expect(game.winner).to eq 'Player 1'
      end
      it 'Paper disproves spock' do
        game.player1.set_choice(:Paper)
        game.player2.set_choice(:Spock) #paper
        expect(game.winner).to eq 'Player 1'
      end
      it 'Spock vaporizes rock' do
        game.player1.set_choice(:Spock)
        game.player2.set_choice(:Rock) #paper
        expect(game.winner).to eq 'Player 1'
      end


  end

end
