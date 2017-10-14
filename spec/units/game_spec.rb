require 'game'

describe Game do
  player_name = 'Ed'
  subject(:game) { described_class.new(player_name, player_class, computer_class) }
  let(:player_class) { double(:player_class, :new => player) }
  let(:player) { double(:player, :update_score => true) }
  let(:computer_class) { double(:computer_class, :new => computer) }
  let(:computer) { double(:computer, :selection => true) }
  describe '#initialize' do
    it 'creates a new player instance' do
      expect(player_class).to receive(:new).with player_name
      Game.new(player_name, player_class, computer_class)
    end
    it 'creates a new computer instance' do
      expect(computer_class).to receive(:new)
      Game.new(player_name, player_class, computer_class)
    end
  end
  describe '#turn' do
    it 'asks the computer for its selection' do
      expect(computer).to receive(:selection)
      game.turn 'rock'
    end
    context 'computer chooses rock' do
      before(:each) { allow(computer).to receive(:selection).and_return('rock') }
      it 'calls update_score with draw if the player has chosen rock' do
        expect(player).to receive(:update_score).with 'draw'
        game.turn 'rock'
      end
      it 'calls update_score with win if the player has chosen paper' do
        expect(player).to receive(:update_score).with 'win'
        game.turn 'paper'
      end
      it 'calls update_score with lose if the player has chosen scissors' do
        expect(player).to receive(:update_score).with 'lose'
        game.turn 'scissors'
      end
    end
    context 'computer chooses paper' do
      before(:each) { allow(computer).to receive(:selection).and_return('paper') }
      it 'calls update_score with lose if the player has chosen rock' do
        expect(player).to receive(:update_score).with 'lose'
        game.turn 'rock'
      end
      it 'calls update_score with draw if the player has chosen paper' do
        expect(player).to receive(:update_score).with 'draw'
        game.turn 'paper'
      end
      it 'calls update_score with win if the player has chosen scissors' do
        expect(player).to receive(:update_score).with 'win'
        game.turn 'scissors'
      end
    end
    context 'computer chooses scissors' do
      before(:each) { allow(computer).to receive(:selection).and_return('scissors') }
      it 'calls update_score with win if the player has chosen rock' do
        expect(player).to receive(:update_score).with 'win'
        game.turn 'rock'
      end
      it 'calls update_score with lose if the player has chosen paper' do
        expect(player).to receive(:update_score).with 'lose'
        game.turn 'paper'
      end
      it 'calls update_score with draw if the player has chosen scissors' do
        expect(player).to receive(:update_score).with 'draw'
        game.turn 'scissors'
      end
    end
  end
end
