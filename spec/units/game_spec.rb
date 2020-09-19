require 'game'

describe Game do
  subject(:game) { Game.new("Penn", "Teller") }
  it 'initializes with 2 players' do
    expect(game.p1).to eq "Penn"
    expect(game.p2).to eq "Teller"
  end
end
    