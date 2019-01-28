require "./models/game"

RSpec.describe Game do
  subject(:game) { Game.new(player, computer) }
  let(:player) { double :player, weapon: :scissors }
  let(:computer) { double :player, weapon: :paper }

  it "lets player win  " do
    game.result
    expect(game.winner).to eq(@player)
  end
end

RSpec.describe Game do
  subject(:game) { Game.new(player, computer) }
  let(:player) { double :player, weapon: :paper }
  let(:computer) { double :player, weapon: :scissors }

  it "lets computer win  " do
    game.result
    expect(game.winner).to eq(@computer)
  end
end
