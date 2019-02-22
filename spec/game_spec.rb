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
end
