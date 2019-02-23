require 'game'

describe 'Game' do
  it "chooses paper randomly from rock, paper, scissors" do
    game = Game.new
    srand(1)
    expect(game.random_rps).to eq('paper')
  end
  it "chooses rock randomly from rock, paper, scissors" do
    game = Game.new
    srand(2)
    expect(game.random_rps).to eq('rock')
  end
  it "chooses scissors randomly from rock, paper, scissors" do
    game = Game.new
    srand(3)
    expect(game.random_rps).to eq('scissors')
  end
  it "declares player the winner if player has rock and game has scissors" do
    game = Game.new
    srand(3)
    expect(game.play('rock')).to eq("WIN")
  end
  it "declares player the loser if player has paper and game has scissors" do
    game = Game.new
    srand(3)
    expect(game.play('paper')).to eq("LOSE")
  end
  it "declares a draw if player has scissors and game has scissors" do
    game = Game.new
    srand(3)
    expect(game.play('scissors')).to eq("DRAW")
  end
  it "knows the game's choice of rps" do
    game = Game.new
    srand(3)
    game.play("rock")
    expect(game.game_choice).to eq("scissors")
  end
end
