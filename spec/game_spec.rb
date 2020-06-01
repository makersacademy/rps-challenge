# frozen_string_literal: true

require 'game'

describe Game do
  let(:player) { double(:player) }
  let(:game) { Game.new(player) }

  it 'Returns a result of the game' do
    allow(player).to receive(:move) { 'Scissors' }
    expect(['Player Won', 'Draw', 'Computer Won']).to include(game.get_result)
  end
end
