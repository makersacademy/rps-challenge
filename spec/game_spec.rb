require 'game'

RSpec.describe Game do

  before(:each) do
    @game = Game.new
    @player_1 = double("player_1", name: "Tim")
    @player_2 = double("player_2", name: "The computer")
  end

  describe '#calculate_winner' do
    it 'sets result to declare player 2 winner if not a draw and player 1 does not win' do
      allow(@game).to receive(:draw?) {false}
      allow(@game).to receive(:first_beats_second?) {false}
      expect(@game.winner(@player_1, @player_2)).to eq(@player_2)
    end
    it 'sets result to draw if draw? is true' do
      allow(@game).to receive(:draw?) {true}
      expect(@game.winner(@player_1, @player_2)).to eq(nil)
    end
    it 'sets result to declare player 1 winner if not a draw and player 1 wins' do
      allow(@game).to receive(:draw?) {false}
      allow(@game).to receive(:first_beats_second?) {true}
      expect(@game.winner(@player_1, @player_2)).to eq(@player_1)
    end
  end

end
