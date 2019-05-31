require 'game'

describe Game do
  let(:game) { Game.new("Scissors") }
  
  it "can randomly generate Rock/Paper/Scissors" do
    srand(344)
    expect(game.random_item).to eq("Paper")
  end

  it "can determine who is a winner" do
    srand(344)
    # random is Paper and users is Scissors so the user has won
    expect(game.score).to eq("You actually won!")
  end
end