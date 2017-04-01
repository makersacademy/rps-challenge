require 'game'

describe Game do
  let(:player) {double(:player, :name => "Naz", :choice => "yellow-throat")}
  let(:player2) {double(:player2, :name => "Naz", :choice => "orange-throat")}
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

  it 'returns draw when selections are the same' do
    game3 = Game.new(player2, comp)
    expect(game3.calculate_winner).to eq "Draw"
  end
   
end
