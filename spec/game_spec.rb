require 'game'

describe Game do
  subject(:game) {described_class.new("sachin")}
  it 'player can play option' do
    expect(game.play("Rock")).to eq "Rock"
  end
end