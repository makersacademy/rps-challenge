require 'game'

describe Game do
  let(:player) { double :player }
  let(:computer) { double :computer }
  let(:game) { Game.new(player, computer) }

  describe '#player' do
    it 'gets the player' do
      expect(game.player).to eq player
    end
  end

  describe '#computer' do
    it 'gets the computer' do
      expect(game.computer).to eq computer
    end
  end

  describe '#who_wins' do
    it 'the players wins' do
      allow(game.player).to receive(:selection) { 'rock' }
      allow(game.computer).to receive(:selection) { 'scissors' }
      game.who_wins
      expect(game.winner).to eq player
    end

    it 'the computer wins' do
      allow(game.player).to receive(:selection) { 'scissors' }
      allow(game.computer).to receive(:selection) { 'rock' }
      game.who_wins
      expect(game.winner).to eq computer
    end

    it 'is a draw' do
      allow(game.player).to receive(:selection) { 'paper' }
      allow(game.computer).to receive(:selection) { 'paper' }
      game.who_wins
      expect(game.draw).to eq true
    end
  end
end
