require 'game'

describe Game do

  let(:player_1) { double('player_1') }
  let(:game) { Game.new(player_1) }

  before { allow(player_1).to receive(:name) {'player_1'} }
  before { allow(game).to receive(:name) {'player_1'} }

  describe 'player selects rock' do

    before { game.player_weapon('rock') }

    it 'cpu selects scissors' do
      allow(game).to receive(:cpu_weapon) { 'scissors' }
      game.run_game
      expect(game.result).to eq 'win'
    end
      
    it 'cpu selects rock' do
      allow(game).to receive(:cpu_weapon) { 'rock' }
      game.run_game
      expect(game.result).to eq 'draw'
    end

    it 'cpu selects paper' do
      allow(game).to receive(:cpu_weapon) { 'paper' }
      game.run_game
      expect(game.result).to eq 'loss'
    end

  end

  describe 'player selects paper' do

    before { game.player_weapon('paper') }

    it 'cpu selects scissors' do
      allow(game).to receive(:cpu_weapon) { 'scissors' }
      game.run_game
      expect(game.result).to eq 'loss'
    end
      
    it 'cpu selects rock' do
      allow(game).to receive(:cpu_weapon) { 'rock' }
      game.run_game
      expect(game.result).to eq 'win'
    end

    it 'cpu selects paper' do
      allow(game).to receive(:cpu_weapon) { 'paper' }
      game.run_game
      expect(game.result).to eq 'draw'
    end

  end

  describe 'player selects scissors' do

    before { game.player_weapon('scissors') }

    it 'cpu selects scissors' do
      allow(game).to receive(:cpu_weapon) { 'scissors' }
      game.run_game
      expect(game.result).to eq 'draw'
    end
      
    it 'cpu selects rock' do
      allow(game).to receive(:cpu_weapon) { 'rock' }
      game.run_game
      expect(game.result).to eq 'loss'
    end

    it 'cpu selects paper' do
      allow(game).to receive(:cpu_weapon) { 'paper' }
      game.run_game
      expect(game.result).to eq 'win'
    end

  end

end