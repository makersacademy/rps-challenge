require 'game'

describe Game do
  let (:player1) { double :player1 }
  subject(:game) { described_class.new(player1) }

  it 'allows access to players' do
    expect(player1).to receive(:name)
    game.player1.name
  end

  it 'generates a random throw' do
    expect(["Rock","Paper","Scissor"]).to include(game.shoot)
  end
end

  