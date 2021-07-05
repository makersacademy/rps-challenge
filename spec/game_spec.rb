require 'game'

describe 'Game' do

  subject(:game) { Game.new(player, computer) }
  let(:player) { double :player }
  let(:computer) { double :computer }

  it 'Starts with a player and a computer' do
    expect(game.player).to eq player
    expect(game.computer).to eq computer
  end

  describe '#winner' do
    it 'Player and computer draw' do
      allow(player).to receive(:player_choice).and_return "Scissors"
      allow(computer).to receive(:computer_choice).and_return "Scissors"
      expect(game.winner).to eq "Draw"
    end

    it 'Player wins' do
      allow(player).to receive(:player_choice).and_return "Rock"
      allow(computer).to receive(:computer_choice).and_return "Scissors"
      expect(game.winner).to eq "Player wins"
    end

    it 'Computer wins' do
      allow(player).to receive(:player_choice).and_return "Scissors"
      allow(computer).to receive(:computer_choice).and_return "Rock"
      expect(game.winner).to eq "Computer wins"
    end
  end
end
