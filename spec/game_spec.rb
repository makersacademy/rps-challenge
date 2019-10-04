describe Game do

  subject(:game) { described_class.new }
  let(:player1) { double player1,  current_move: 'ROCK' }
  let(:player2) { double player2,  current_move: 'PAPER' }

  describe 'tests need players' do

    before do
      game.add_player(player1,player2)
    end

    it 'can define the winner' do
      expect(game.winner).to eq player2
    end












  end

end
