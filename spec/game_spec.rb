require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player1, move: :rock, winning_move: [:scissors, :lizard] }
  let(:player2) { double :player2, move: :scissors, winning_move: [:paper, :lizard] }
  let(:player3) { double :player3, move: :paper, winning_move: [:rock, :spock] }
  let(:player4) { double :player4, move: :lizard, winning_move: [:spock, :paper] }
  let(:player5) { double :player5, move: :spock, winning_move: [:rock, :scissors] }

  context 'player1 chooses rock' do
    it 'should return win if computer chooses scissors' do
      expect(game.assign_winner).to eq player1
    end
    it 'should return draw if computer chooses rock' do
      new_game = Game.new(player1, player1)
      expect(new_game.assign_winner).to eq "Draw"
    end
    it 'should return player2 if player1 loses' do

    end
  end
  context 'player1 chooses scissors' do
    it 'should return player1 if player 2 chooses either lizard or paper' do
      win_game = Game.new(player2, player4)
      expect(win_game.assign_winner).to eq player2
    end
    it 'should return draw if player2 chooses scissors' do
      draw_game = Game.new(player2, player2)
      expect(draw_game.assign_winner).to eq "Draw"
    end
  end
end
