require_relative '../app/lib/game'

describe Game do
  before do
    @player = double("Player", :choice => :Rock)
    @computer = double("Computer", :choice => :Paper)
  end

  it "returns loss" do
    @game = Game.new(player_class: @player, computer_class: @computer)
    expect(@game.result).to eq :loss
  end

  it "returns win" do
    allow(@computer).to receive(:choice).and_return(:Scissors)
    @game = Game.new(player_class: @player, computer_class: @computer)
    expect(@game.result).to eq :win
  end

  it "returns draw" do
    allow(@computer).to receive(:choice).and_return(:Rock)
    @game = Game.new(player_class: @player, computer_class: @computer)
    expect(@game.result).to eq :draw
  end
end
