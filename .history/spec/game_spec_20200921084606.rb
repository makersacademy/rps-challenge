# frozen_string_literal: true

require 'game'
require 'player'

describe Game do
  subject(:game) { Game.new(player) }
  let(:player) { Player.new('Ursie') }

  it 'initializes with a player' do
    expect(game.player).to eq player
  end

  it "can return a rendom bot selections of moves" do 
    expect(game.bot).to eq('rock').or eq('paper').or eq('scissors').or eq('lizard').or eq('spock')
  end 
  
  describe 'result' do
    it "can state if it's a draw" do
      player.choice('spock')
      srand(0)
      game.bot
      expect(game.result('rock')).to eq "It's a draw"
    end

    it 'can state when the computer won' do
      player.choice('scissors')
      srand(0)
      game.bot
      expect(game.result('scissors')).to eq 'Computer won!'
    end

    it 'can state when the player won' do
      player.choice('paper')
      srand(0)
      game.bot
      expect(game.result('paper')).to eq 'Ursie is a winner!!!'
    end
  end
end
