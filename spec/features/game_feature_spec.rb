require 'game'
require 'player'
require 'computer_player'

describe 'Rock Paper Scissors game' do
  describe 'singleplayer game' do
    let(:player) { Player.new('Filbert') }
    let(:computer_player) { ComputerPlayer.new }
    let(:game) { Game.new(player, computer_player) }
    context 'single player' do
      it 'works (to be refactored into separate tests)' do
        game.play('rock')
        puts(game.last_game_text)
        game.play('scissors')
        puts(game.last_game_text)
        game.play('paper')
        puts(game.last_game_text)
      end
    end
  end

  describe 'two player game test' do
    let(:player) { Player.new('Filbert') }
    let(:player_two) { double(:player, move: :rock, name: 'Stormy') }
    let(:game) { Game.new(player, player_two) }
    context 'single player' do
      it 'works (to be refactored into separate tests)' do
        game.play('rock')
        puts(game.last_game_text)
        game.play('scissors')
        puts(game.last_game_text)
        game.play('paper')
        puts(game.last_game_text)
      end
    end
  end

end