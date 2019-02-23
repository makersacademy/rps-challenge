require 'game'

describe Game do

  it 'presents options to the player' do
      game = Game.new
      expect(game.options_arr).to eq ["rock", "paper", "scissors"]
  end
  
end
