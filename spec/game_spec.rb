require './lib/game'

describe Game do
  let(:player) { double 'player' }

  describe '.create' do
    it 'creates a game instance' do
      Game.create(player)
      expect(Game.player).to eq player
    end
  end

  describe '.random_move' do
    it 'is a randomly chosen rock, paper, etc' do
      allow(Game).to receive(:moves).and_return [:need_to_figure_out_where_sample_lives_eg_Kernel]
      expect(Game.random_move).to eq :rock
    end
  end

  let(:player) { double 'player' }

  describe '.compare' do
    it 'gets the right winner' do
      Game.create(player)
      Game.random_move
      allow(Game).to receive(:game_choice).and_return(:scissors)
      Game.compare(:paper)
      expect(Game.state).to eq :game_wins
      Game.compare(:scissors)
      expect(Game.state).to eq :draw
      Game.compare(:rock)
      expect(Game.state).to eq :player_wins
    end
  end

  let(:player) { double 'player' }

  describe '.weapon' do
    it 'knows which weapon won the game' do
      Game.create(player)
      Game.random_move
      allow(player).to receive(:choice).and_return(:rock)
      allow(Game).to receive(:game_choice).and_return(:scissors)
      Game.compare(:rock)
      expect(Game.weapon).to eq :rock
      allow(player).to receive(:choice).and_return(:paper)
      Game.compare(:paper)
      expect(Game.weapon).to eq :paper
    end
  end

end
