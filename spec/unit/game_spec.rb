require 'game'
require 'computer'

describe Game do
  let(:player1) { double :player }
  let(:player2) { double :player }

  subject(:game) { described_class.new(player1, player2) }

  context '#initialize' do
    it 'takes player1 as argument' do
      expect(game.player1).to eq player1
    end

    it 'takes player2 as a second argument' do
      expect(game.player2).to eq player2
    end

    it 'has a default' do
      game = Game.new(player1)
      expect(game.player2).to be_an_instance_of Computer
    end
  end

  context '#play versus computer' do

    it 'returns player1 as the winner' do
      game = Game.new(player1)
      allow_any_instance_of(Array).to receive(:sample) { 'Paper' }
      allow(player1).to receive(:player_choice) { 'Scissors' }

      expect(game.play).to eq 'player1'
    end

    it 'returns computer as winner' do
      game = Game.new(player1)
      allow_any_instance_of(Array).to receive(:sample) { 'Paper' }
      allow(player1).to receive(:player_choice) { 'Rock' }

      expect(game.play).to eq 'player2'
    end

    it 'returns draw when same option' do
      game = Game.new(player1)
      allow_any_instance_of(Array).to receive(:sample) { 'Paper' }
      allow(player1).to receive(:player_choice) { 'Paper' }

      expect(game.play).to eq 'draw'
    end
  end

  context '#play versus player2' do
    it 'returns player1 as the winner' do
      allow(player1).to receive(:player_choice) { 'Scissors' }
      allow(player2).to receive(:player_choice) { 'Paper' }
      expect(game.play).to eq 'player1'
    end

    it 'returns player2 as winner' do
      allow(player1).to receive(:player_choice) { 'Rock' }
      allow(player2).to receive(:player_choice) { 'Paper' }

      expect(game.play).to eq 'player2'
    end

    it 'returns draw when same option' do
      allow(player1).to receive(:player_choice) { 'Paper' }
      allow(player2).to receive(:player_choice) { 'Paper' }

      expect(game.play).to eq 'draw'
    end
  end
end
