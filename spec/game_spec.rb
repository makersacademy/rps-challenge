require 'game'

describe Game do
  subject(:dave) { Game.new("Dave", "Rock") }
  subject(:computer) { Game.new("Dave", "Rock") }

  it "initializes with the player name" do
    expect(dave.player_1_name).to eq "Dave"
  end

  it "initializes with teh player's move" do
    expect(dave.player_attack).to eq "Rock"
  end

  it "calculates the win" do
    srand(4)
    allow(computer).to receive(:computer_move)
    expect(computer.play).to eq "You lose!"
  end

end
