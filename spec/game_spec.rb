require 'game'

describe Game do
  name = "Ryan"
  let(:game) {Game.new(name)}

  it "initializes with player_1" do
    expect(game.player_1).to eq("Ryan")
  end

  it "selects a random weapon" do
    # p game.random
    allow(game).to receive(:random).and_return("Rock")
    expect(game.random).to eq("Rock")
  end

  it "compares selections to choose a winner" do
    allow(game).to receive(:player_choice).and_return("Paper")
    allow(game).to receive(:computer_choice).and_return("Rock")
    expect(game.calculate).to eq("#{name} wins")
  end

  it "compares selections to show tie" do
    allow(game).to receive(:player_choice).and_return("Paper")
    allow(game).to receive(:computer_choice).and_return("Paper")
    expect(game.calculate).to eq("Tied")
  end


end

#we have 1) Player's choice (string) 2) Comp's choice (string)
#need to combine into array, and compare with winchoice
