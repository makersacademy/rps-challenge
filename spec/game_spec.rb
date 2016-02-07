require 'game'

describe Game do
  subject(:game) {described_class.new(player1,computer)}
  let(:computer) {double :computer}
  let(:player1) {double(:player1, name: 'Scott')}
  let(:player2) {double :player2}

  describe '#initialize' do
    it 'assigns a player' do
      expect(game.player1).to eq player1
    end
  end

  describe 'Winner' do
    it 'can choose correct winner' do
      expect(game.winner(:rock, :scissors)).to eq 'Scott'
    end

  it 'returns no winner if the game is a draw' do
    expect(game.winner(:paper, :paper)).to include 'NO WINNER'
  end

  end
end
