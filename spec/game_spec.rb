describe Game do

  before(:each) do
    @game = Game.new('Kirk')
  end

  context 'calculates the right result' do
    it 'computer wins' do
      @game.player_move = 'rock'
      @game.computer_move = 'paper'
      expect(@game.game_result).to eq ('Computer wins')
    end

    it 'player wins' do
      @game.player_move = 'paper'
      @game.computer_move = 'rock'
      expect(@game.game_result).to eq ('Kirk wins')
    end

    it 'draws' do
      @game.player_move = 'scissors'
      @game.computer_move = 'scissors'
      expect(@game.game_result).to eq ("It's a draw, everyone wins")
    end
  end

end
