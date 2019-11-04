# frozen_string_literal: true

require 'player'

describe Player do
  subject(:player1) { described_class.new('Mittens') }

  it 'returns the player name' do
    expect(player1.name).to eq 'Mittens'
  end

  it 'starts with a nil score' do
    expect(player1.player_score).to eq 0
  end

  it 'increases the player score by 1' do
    player1.increase_score
    expect(player1.player_score).to eq 1
  end

  it 'accepts the last move - Rock' do
    player1.last_move('Rock')
    expect(player1.move).to eq "Rock"
  end
end
