describe Game do

  subject(:game) { described_class.new }
  let(:player1) { double :player1,  current_move: 'ROCK', name: 'PLAYER1' }
  let(:player2) { double :player2,  current_move: 'PAPER', name: 'PLAYER2' }
  let(:player3) { double :player3,  current_move: 'SCISSORS', name: 'PLAYER3' }

  it "can add players" do
    game.add_player(player1,player2)
    expect(game.player1).to eq player1
    expect(game.player2).to eq player2
  end

  describe 'tests that need players' do

    before do
      game.add_player(player1,player2)
    end

    it 'knows p1 current move' do
      expect(game.p1move).to eq player1.current_move
    end

    it 'knows p2 current move' do
      expect(game.p2move).to eq player2.current_move
    end

    describe "#tie?" do

      it 'returns false for a win' do
        expect(game.tie?).to eq false
      end

      it 'returns true for a tie' do
        game.add_player(player2,player2)
        expect(game.tie?).to eq true
      end

    end

    describe "#print_winner" do
      it 'can print the winner' do
        expect(game.print_winner(player1)).to eq "WINNER IS #{player1.name}!!"
      end
    end

    describe "#winner" do

      it 'can define winner when p1 plays rock' do
        expect(game.winner).to eq "WINNER IS #{game.player2.name}!!"
      end

      it 'can define winner when p1 plays paper' do
        game.add_player(player2,player3)
        expect(game.winner).to eq "WINNER IS #{game.player2.name}!!"
      end

      it 'can define winner when p1 plays scissors' do
        game.add_player(player3,player1)
        expect(game.winner).to eq "WINNER IS #{game.player2.name}!!"
      end

      it 'can define a tie' do
        game.add_player(player2,player2)
        expect(game.winner).to eq "NO WINNER, BOTH PLAYED: #{player2.current_move}"
      end
    end

    describe '#reset' do
      it 'resets the players game' do
        expect(player1).to receive(:reset)
        expect(player2).to receive(:reset)
        game.reset
      end
    end




  end
end
