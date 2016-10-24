require 'game'

describe Game do
  subject(:game) { described_class.new(player) }

  let(:player) { double(:player)  }

  it "Game create an instance of itself" do
    expect(Game.create(player)).to be_an_instance_of Game
  end

  describe 'game starts with a player' do
    it 'returns player' do
      expect(game.player).to eq player
    end
  end

  describe 'Player moves' do
    it 'returns rock' do
      game.rock
      expect(game.player_move).to eq :rock
    end

    it 'returns paper' do
      game.paper
      expect(game.player_move).to eq :paper
    end

    it 'returns rock' do
      game.scissors
      expect(game.player_move).to eq :scissors
    end
  end

  describe '#computer_move' do
    it 'computer makes a selection' do
      allow(Game::MOVE).to receive(:sample).and_return(:rock)
      game.computer_move
      expect(game.pc_move).to eq :rock
    end
  end

  describe '#draw?' do
    it 'returns true when player_shape is :rock and opponent_shape is :rock' do
      allow(Game::MOVE).to receive(:sample).and_return(:rock)
      game.rock
      game.computer_move
      expect(game.draw?).to eq true
    end
  end

  describe '#win?' do
    it 'returns true when player_shape is :rock and opponent_shape is :scissors' do
      allow(Game::MOVE).to receive(:sample).and_return(:scissors)
      game.rock
      game.computer_move
      expect(game.win?).to eq true
    end
  end

  describe '#lose?' do
    it 'returns true when player_shape is :rock and opponent_shape is :paper' do
      allow(Game::MOVE).to receive(:sample).and_return(:paper)
      game.rock
      game.computer_move
      expect(game.lose?).to eq true
    end
  end

end
