require 'game'
require 'player'

describe Game do
  let(:dbl) { double(:player, move: 'rock') }
  subject(:game) { described_class.new(dbl) }

  it 'chooses a random sign for the computer' do
    expect(['rock','paper','scissors']).to include(game.assign_computer_move)
  end
end
