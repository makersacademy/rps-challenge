require 'game'

describe Game do
  subject(:game) { described_class.new(player, opponent) }
  let(:player) { double :player, name: 'Ruby', choice: 'Rock' }
  let(:opponent) { double :opponent, name: 'Computer' }

  it 'takes a player as an argument' do
    expect(game.player).to eq player
  end

  it 'takes an opponent as an argument' do
    expect(game.opponent).to eq opponent
  end

  context 'Player wins' do
    it 'returns the player name' do
      allow(opponent).to receive(:choice) { 'Scissors' }
      expect(game.winner(player, opponent)).to eq 'Ruby'
    end
  end

  context "It's a draw" do
    it 'returns that it is a draw' do
      allow(opponent).to receive(:choice) { 'Rock' }
      expect(game.winner(player, opponent)).to eq "It's a draw"
    end
  end

  context 'Computer wins' do
    it 'returns the computer name' do
      allow(opponent).to receive(:choice) { 'Paper' }
      expect(game.winner(player, opponent)).to eq 'Computer'
    end
  end
end
