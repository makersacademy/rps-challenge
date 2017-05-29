require 'spec_helper'

describe Game do
  subject(:game) {described_class.new}

  it 'calculates the winner' do
    expect(game.calculate_winner).to eq 'Win' || 'Lose' || 'Draw'
  end
end
