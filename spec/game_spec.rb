require 'game'

describe Game do

  subject(:game) {described_class.new("player_1") }

  before :each do
    srand(0)
  end

  it "should show the name of the player" do
    expect(game.name).to eq "player_1"
  end

  it "computer should pick rock, paper, or scissors" do
     expect { game.computer_chooses }.to change{ game.computer_choice }
  end

  it "should permit computer to win if it has the best hand" do
    game.computer_chooses
    game.player_choice = "Scissors"
    game.evaluate
    expect(game.winner).to eq "Computer"
  end


end