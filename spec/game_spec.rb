describe Game do
  subject(:game1)   { Game.new(player1, player2) }
  let(:player1)     { double :player }
  let(:player2)     { double :player }

  describe '#ai_choice' do
    it "returns ai choice" do
      srand(3)
      expect(game1.ai_choice).to eq "Scissors"
    end
  end

# test for first_player, last_player and players?

  describe '#who_wins' do
    context 'when player 1 wins' do
      it "rock vs scissors" do
        expect(game1.who_wins('Rock', 'Scissors')).to eq 'Player 1 wins!'
      end
      it "scissors vs paper" do
        expect(game1.who_wins('Scissors', 'Paper')).to eq 'Player 1 wins!'
      end
      it "paper vs rock" do
        expect(game1.who_wins('Paper', 'Rock')).to eq 'Player 1 wins!'
      end
    end

    context 'when player 2 wins' do
      it "scissors vs rock" do
        expect(game1.who_wins('Scissors', 'Rock')).to eq 'Player 2 wins!'
      end
      it "paper vs scissors" do
        expect(game1.who_wins('Paper', 'Scissors')).to eq 'Player 2 wins!'
      end
      it "rock vs paper" do
        expect(game1.who_wins('Rock', 'Paper')).to eq 'Player 2 wins!'
      end
    end

    context 'when its a draw' do
      it "rock vs rock" do
        expect(game1.who_wins('Rock', 'Rock')).to eq 'It\'s a draw!'
      end
      it "scissors vs scissors" do
        expect(game1.who_wins('Scissors', 'Scissors')).to eq 'It\'s a draw!'
      end
      it "paper vs paper" do
        expect(game1.who_wins('Paper', 'Paper')).to eq 'It\'s a draw!'
      end
    end

    context 'when missing a choice' do
      it "nil vs paper" do
        expect(game1.who_wins(nil, 'Paper')).to eq 'No winner: you have to both choose!'
      end
      it "paper vs nil" do
        expect(game1.who_wins('Paper', nil)).to eq 'No winner: you have to both choose!'
      end
      it "nil vs nil" do
        expect(game1.who_wins(nil, nil)).to eq 'No winner: you have to both choose!'
      end
    end

  end
end
