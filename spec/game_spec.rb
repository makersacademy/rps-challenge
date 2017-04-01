require 'game'

describe Game do
  let(:player) {double(:player, :name => "Naz", :choice => "yellow-throat")}
  let(:comp) {double(:comp, :choice => "orange-throat")}
  let(:comp2) {double(:comp2, :choice => "blue-throat")}
  subject(:game) {described_class.new(player, comp)}

  it 'initializes game with a player' do
    expect(game.player).to eq player
  end

  it 'player wins when they select yellow and comp selects orange' do
    expect(game.calculate_winner).to eq player
  end

  it 'comp wins when they select blue and player selects yellow' do
    game2 = Game.new(player, comp2)
    expect(game2.calculate_winner).to eq comp2
  end
end
