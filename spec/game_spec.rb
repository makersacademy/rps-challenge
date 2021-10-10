require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double("Player") }

  it 'stores a player' do
    expect(game.player).to eq(player)
  end

  it 'determines the winner' do
    expect(game.result("rock", "paper")).to eq("paper")
  end
end
