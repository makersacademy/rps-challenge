require 'game'

describe Game do
let(:player) {double(:player)}
let(:computer) {double(:computer)}

  it "Can give a result" do
    game = Game.new(player, computer)
    allow(player).to receive(:choice) {'rock'}
    allow(computer).to receive(:choice) {'scissors'}
    expect(game.result).to eq true
  end

end
