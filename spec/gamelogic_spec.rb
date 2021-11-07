require 'gamelogic'


describe GameLogic do
  subject(:gamelogic) { GameLogic.new(winning_player, computer) }
  let(:winning_player) { double :winning_player, :name => "John", :choice => "Rock"}
  let(:computer) { double :computer, :name => "Mr. Computer", :choice => "Scissors" }
  let(:losing_player) { double :losing_player, :name => "Betty", :choice => "Paper"}
  
  describe 'winning result' do
    it 'Returns "win" for the result of the RPS game' do
      expect(gamelogic.result).to eq "Win"
    end
  end

  describe 'losing result' do
    it 'Returns "Lose" for the result of the RPS game' do
      losing_game = GameLogic.new(losing_player, computer)
      expect(losing_game.result).to eq "Lose"
    end
  end
end