require 'game'

describe Game do
  subject(:some_game) { described_class.new(player) }
  let(:player) { double(:player, name: "Meerkat") }

  it 'game starts once player submits their name' do
    new_game= Game.new(Player.new("Meerkat"))
    expect(some_game.player.name).to eq new_game.player.name
  end
 
end