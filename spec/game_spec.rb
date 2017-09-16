require 'game.rb'

describe Game do

  subject(:game) {described_class.new(player, computer)}
  let(:player) {double(:player)}
  let(:computer) {double(:computer)}

  it 'can instantiate a new game' do
    expect(game).to eq(game)
  end
end
