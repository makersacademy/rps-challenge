require 'game'
require 'spec_helper'

describe Game do
  let(:player){double :player, choice: :rock}
  let(:computer){double :computer, choice: :paper}
  subject(:game){described_class.new(player, computer)}

  describe '#initialization' do
    it 'should accept two objects as players' do
      expect(game.player1).to eq player
      expect(game.player2).to eq computer
    end
  end

  describe '#winner' do
    it 'should return the player who won' do
      expect(game.winner).to eq computer
    end
    it 'should return tie if it is a tie' do
      allow(computer).to receive(:choice).and_return(:rock)
      expect(game.winner).to eq 'Tie'
    end

    it 'rock vs scissors' do
      allow(computer).to receive(:choice).and_return(:scissors)
      expect(game.winner).to eq player
    end

    it 'rock vs lizard' do
      allow(computer).to receive(:choice).and_return(:lizard)
      expect(game.winner).to eq player
    end

    it 'rock vs paper' do
      expect(game.winner).to eq computer
    end

    it 'spock vs paper' do
      allow(player).to receive(:choice).and_return(:spock)
      expect(game.winner).to eq computer
    end

    it 'scissors vs paper' do
      allow(player).to receive(:choice).and_return(:scissors)
      expect(game.winner).to eq player
    end

    it 'scissors vs lizard' do
      allow(computer).to receive(:choice).and_return(:lizard)
      allow(player).to receive(:choice).and_return(:scissors)
      expect(game.winner).to eq player
    end

    it 'spock vs scissors' do
      allow(computer).to receive(:choice).and_return(:spock)
      allow(player).to receive(:choice).and_return(:scissors)
      expect(game.winner).to eq computer
    end

    it 'spock vs rock' do
      allow(computer).to receive(:choice).and_return(:spock)
      allow(player).to receive(:choice).and_return(:rock)
      expect(game.winner).to eq computer
    end

    it 'lizard vs spock' do
      allow(computer).to receive(:choice).and_return(:lizard)
      allow(player).to receive(:choice).and_return(:spock)
      expect(game.winner).to eq computer
    end

    it 'lizard vs paper' do
      allow(computer).to receive(:choice).and_return(:lizard)
      allow(player).to receive(:choice).and_return(:paper)
      expect(game.winner).to eq computer
    end
  end

  before do
    Game.save(game)
  end
  describe '#self.save' do
    it 'saves instance of game to class variable' do
      expect(Game.load).to eq game
    end
  end

  describe '#self.load' do
    it 'returns the saved game object' do
      expect(Game.load).to eq game
    end
  end
end
