require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player, name: 'Ruby', choice: 'Rock' }
  let(:computer) { double :computer, name: 'Computer', choice: 'Paper' }

  it 'takes a player as an argument' do
    expect(game.player).to eq player
  end

  context '#winner' do
    it 'returns a winner' do
      expect(game.winner(player, computer)).to eq 'Computer'
    end
  end
end
