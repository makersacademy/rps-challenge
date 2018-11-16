require "game"

describe Game do
  let(:player_1) {double :player_1, name: "Nim"}
  let(:computer) {double :computer, name: "computer"}
  let(:player_class_1) {double :player_1_class, new: player_1}
  let(:player_class_2) {double :player_2_class, new: computer}
  let(:game) {Game.new("Nim", "computer")}
  it "creates a player called 'Nim'" do
    expect(game.player_1.name).to eq "Nim"
  end
  it "creates a computer player" do
    expect(game.computer.name).to eq "computer"
  end

  it "sets winner to dnil" do
    expect(game.winner).to eq nil
  end

  it "sets CHOICES to array or rock, paper or scissors" do
    expect(Game::CHOICES).to eq ["Rock", "Paper", "Scissors"]
  end

  it "returns a random choice for rock, paper and scissors" do
    srand(2345)
    index = rand(3) # Use in feature test
    srand(2345)
    expect(game.random).to eq Game::CHOICES[index]
  end
end
