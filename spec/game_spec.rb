require "game"

describe Game do
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  subject(:game) { described_class.new(player_1, player_2) }

  describe 'start a new game with 2 players' do
    it 'allows a game to receive player 1' do
      expect(game).to respond_to(:player1)
    end
    it 'allows a game to receive player 2' do
      expect(game).to respond_to(:player2)
    end

    it "calculates The Computer's Choice" do
      expect(game).to respond_to(:get_choice)
    end
    it 'calculates the winner' do
      expect(game).to respond_to(:get_winner)
    end

  end

end
