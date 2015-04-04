require 'capybara/rspec'
require 'game'
require 'player'
require 'cpu'

feature 'When playing rock, paper, scissors' do
  context 'Two players:' do
    let(:player1) { Player.new 'Jack' }
    let(:player2) { Player.new 'Alex' }
    let(:two_player_game) { Game.new player1, player2 }

    scenario 'a new game with two players can be created' do
      expect(two_player_game.player_one.name).to eq 'Jack'
      expect(two_player_game.player_two.name).to eq 'Alex'
    end
  end

  context 'One player (+ cpu):' do
    let(:player1) { Player.new 'Jack' }
    let(:cpu) { CPU.new }
    let(:one_player_game) { Game.new player1, cpu }

    scenario 'a new game with a player and a cpu can be created' do
      expect(one_player_game.player_one.name).to eq 'Jack'
      expect(one_player_game.player_two).to eq cpu
    end
  end
end
