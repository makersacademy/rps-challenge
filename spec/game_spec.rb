require 'game'

describe Game do

  subject(:game) {described_class.new("player_1") }

  it "should show the name of the player" do
    expect(game.name).to eq "player_1"
  end

  it "computer should pick rock, paper, or scissors" do
     expect { game.computer_chooses }.to change{ game.computer_choice }
  end

  it "should permit computer to win if it has the best hand" do
    allow(game).to receive(:computer_choice).and_return("Rock")
    game.player_choice = "Scissors"

    game.evaluate

    p "=========="
    p "evaluate"
    p game.evaluate
    p "=========="
    expect(game.winner).to eq "Computer"

  end


end