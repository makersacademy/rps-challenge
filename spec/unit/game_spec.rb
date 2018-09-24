require 'game'

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
  end

  context '#play versus computer' do
    context 'computer choice is paper' do

      before(:each) do
        allow_any_instance_of(Array).to receive(:sample) { 'Paper' }
      end

      it 'returns player1 as the winner when player chooses scissors' do
        game = Game.new(player1, player2)
        allow(player1).to receive(:player_choice) { 'Scissors' }
        allow(player2).to receive(:player_choice) { 'Paper' }

        expect(game.play).to eq 'player1'
      end

      it 'returns computer as winner when player chooses rock' do
        game = Game.new(player1, player2)
        allow(player1).to receive(:player_choice) { 'Rock' }
        allow(player2).to receive(:player_choice) { 'Paper' }

        expect(game.play).to eq 'player2'
      end

      it 'returns draw when player chooses paper' do
        game = Game.new(player1, player2)
        allow(player1).to receive(:player_choice) { 'Paper' }
        allow(player2).to receive(:player_choice) { 'Paper' }

        expect(game.play).to eq 'draw'
      end
    end
  end

  context '#play versus player2' do
    subject(:game) { described_class.new(player1, player2) }

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
