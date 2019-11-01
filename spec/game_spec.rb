require 'game'
require 'player'

describe Game do
  subject(:game) {Game.new(double(:player),double(:player))}
  it 'Can be an instance of game' do
    expect(game).to be_instance_of Game
  end

  context 'Players' do

    let(:player1) {double(:player, name: "Bradley", computer: false)}
    let(:player2) {double(:player, name: "Computer", computer: true)}

    subject(:game) {Game.new(player1,player2)}

    it 'Player 1 can be player 1' do
      expect(game.player1).to eq player1
    end

    it 'Player 2 can be player 2' do
      expect(game.player2).to eq player2
    end
  end
end
    