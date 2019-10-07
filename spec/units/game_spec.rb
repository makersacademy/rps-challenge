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

  it "can recognize a draw" do
    game1 = Game.new("Paper")
    srand(344)
    expect(game1.score).to eq("It is a draw")
  end

  it "can give me image back" do
    expect(game.give_my_image).to eq("/images/scissors.jpg")
  end

  it "can give me random image back" do
    srand(344)
    game.score
    expect(game.give_random_image).to eq("/images/paper.jpg")
  end
end