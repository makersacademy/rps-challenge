require 'Game'

describe 'Game' do
  subject(:game) { Game.new(player_1,computer) }
  let (:player_1) { double :player }
  let (:computer) { double :computer }


  it 'returns player 1' do
    expect(game.player_1).to eq player_1
  end

  it "evalutes computer has won"  do
    expect(game.play("Rock","Paper")).to eq "computer wins"
  end

  it "evalutes player has won"  do
    expect(game.play("Scissors","Paper")).to eq "player wins"
  end

  it "evalutes a draw" do
    expect(game.play("Scissors","Scissors")).to eq "draw"
  end

end
