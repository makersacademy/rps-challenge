require 'game'

describe Game do

  let(:game) {Game.new}
  let(:scissors) {double :weapon, type: "scissors"}
  let(:rock) {double :weapon, type: "rock"}
  let(:paper) {double :weapon, type: "rock"}
  let(:player1) {double :player, weapon_choice: scissors}
  let(:player2) {double :player, weapon_choice: rock}
  let(:player3) {double :player, weapon_choice: paper}
  let(:player4) {double :player, weapon_choice: paper}

  it 'should be able to add a player' do
    expect(game.add_player(player1)).to eq [player1]
  end

  it 'should not be able to add more than 2 players' do
    2.times{game.add_player(player1)}
    expect{game.add_player(player1)}.to raise_error(RuntimeError, 'Only 2 players allowed')
  end

  it 'should know who has won' do
    game.add_player(player1)
    game.add_player(player2)
    expect(game.result).to eq player2
  end

  it 'should know when the game is a draw' do
    game.add_player(player3)
    game.add_player(player4)
    expect(game.result).to eq "draw"
  end

end

