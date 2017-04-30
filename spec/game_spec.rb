require 'game'

describe Game do

  let(:computer) { double :computer }
  let(:player) { double :player }
  let(:game) { described_class.new(player, computer) }

  describe '::new' do
    it 'has a player' do
      expect(game.player1).to eq player
    end

    it 'has second player as computer' do
      expect(game.computer).to eq computer
    end
  end

  describe 'self.load_instance' do
    it 'loads an instance of self' do
      described_class.create(player, computer)
      expect(described_class.load_instance).to be_a Game
    end
  end

  describe '#player_wins' do
    context 'player chooses rock and computer chooses scissors' do
      it 'returns true' do
        allow(player).to receive(:current_choice) { 'rock' }
        allow(computer).to receive(:current_choice) { 'scissors' }
        expect(game.player_wins).to be_truthy
      end
    end

    context 'player chooses paper and computer chooses scissors' do
      it 'returns false' do
        allow(player).to receive(:current_choice) { 'paper' }
        allow(computer).to receive(:current_choice) { 'scissors' }
        expect(game.player_wins).to_not be_truthy
      end
    end
  end

  describe '#draw?' do
    context 'player and computer choose same option' do
      it 'returns true' do
        allow(player).to receive(:current_choice) { 'paper' }
        allow(computer).to receive(:current_choice) { 'paper' }
        expect(game).to be_draw
      end
    end
  end

end
