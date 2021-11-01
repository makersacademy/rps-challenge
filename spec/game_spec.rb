require 'game'
require 'computer'
require 'player'

describe Game do

  let(:player_1) { double('player_1', :name => 'player_1') }
  let(:player_2) { double('player_2', :name => 'player_2') }
  let(:game) { Game.new(player_1, player_2) }

  describe 'player selects rock' do

    before { allow(player_1).to receive(:player_weapon) { 'rock' } }

    it 'cpu selects scissors' do
      allow(player_2).to receive(:player_weapon) { 'scissors' }
      game.run_game
      expect(game.result).to eq 'win'
    end
      
    it 'cpu selects rock' do
      allow(player_2).to receive(:player_weapon) { 'rock' }
      game.run_game
      expect(game.result).to eq 'draw'
    end

    it 'cpu selects paper' do
      allow(player_2).to receive(:player_weapon) { 'paper' }
      game.run_game
      expect(game.result).to eq 'loss'
    end

  end

  describe 'player selects paper' do

    before { allow(player_1).to receive(:player_weapon) { 'paper' } }

    it 'cpu selects scissors' do
      allow(player_2).to receive(:player_weapon) { 'scissors' }
      game.run_game
      expect(game.result).to eq 'loss'
    end
      
    it 'cpu selects rock' do
      allow(player_2).to receive(:player_weapon) { 'rock' }
      game.run_game
      expect(game.result).to eq 'win'
    end

    it 'cpu selects paper' do
      allow(player_2).to receive(:player_weapon) { 'paper' }
      game.run_game
      expect(game.result).to eq 'draw'
    end

  end

  describe 'player selects scissors' do

    before { allow(player_1).to receive(:player_weapon) { 'scissors' } }

    it 'cpu selects scissors' do
      allow(player_2).to receive(:player_weapon) { 'scissors' }
      game.run_game
      expect(game.result).to eq 'draw'
    end
      
    it 'cpu selects rock' do
      allow(player_2).to receive(:player_weapon) { 'rock' }
      game.run_game
      expect(game.result).to eq 'loss'
    end

    it 'cpu selects paper' do
      allow(player_2).to receive(:player_weapon) { 'paper' }
      game.run_game
      expect(game.result).to eq 'win'
    end

  end

end