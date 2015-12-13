require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player, name: 'Ruby', choice: 'Rock' }
  let(:computer) { double :computer, name: 'Computer' }

  it 'takes a player as an argument' do
    expect(game.player).to eq player
  end

  it 'takes a computer as an argument' do
    expect(game.computer).to eq computer
  end

  context 'Player wins' do
    it 'returns the player name' do
      allow(computer).to receive(:choice) { 'Scissors' }
      expect(game.winner(player, computer)).to eq 'Ruby'
    end
  end

  context "It's a draw" do
    it 'returns that it is a draw' do
      allow(computer).to receive(:choice) { 'Rock' }
      expect(game.winner(player, computer)).to eq "It's a draw"
    end
  end

  context 'Computer wins' do
    it 'returns the computer name' do
      allow(computer).to receive(:choice) { 'Paper' }
      expect(game.winner(player, computer)).to eq 'Computer'
    end
  end
end
