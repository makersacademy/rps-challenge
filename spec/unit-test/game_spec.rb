require 'game.rb'

describe '#player_move' do
  let(:game) {Game.new}

  it 'game can show player move' do
    game.attack("rock")
    expect(game.player_move).to eq("rock")
  end

end
