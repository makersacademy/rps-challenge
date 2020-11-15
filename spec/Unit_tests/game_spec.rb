require 'game'

describe Game do
  subject(:dave) { Game.new("Michael", "Rock") }
  subject(:computer) { Game.new("Michael", "Rock") }

  it "initializes with the player name" do
    expect(dave.player_1_name).to eq "Michael"
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
