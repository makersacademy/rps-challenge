require 'game'

describe Game do
  subject(:game) { described_class.new("Kevin") }
  it 'knows the players name' do
    expect(game.player_name).to eq "Kevin"
  end
end