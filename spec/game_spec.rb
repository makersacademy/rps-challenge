require 'game'

describe Game do
  let(:game) {Game.new}
  let(:player_one){double :player, shapes: :paper}
  let(:player_two){double :player}
  let(:computer){double :computer}
  let(:game_with_player) {Game.new}


  it "can add a player" do
    game.add_player(player_one)
    expect(game.player_one).to eq player_one
  end

  it "can add a second player" do
    game.add_player(player_one)
    game.add_player(player_two)
    expect(game.player_two).to eq player_two
  end

  
  
end