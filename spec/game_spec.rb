require_relative '../app/lib/game.rb'

describe Game do
  before do
    @player = double("Player", :selected => :Rock)
  end

  it "returns loss" do
    @computer = :Paper
    @game = Game.new(player_class: @player, computer: @computer)
    expect(@game.result).to eq :loss
  end

  it "returns win" do
    @computer = :Scissor
    @game = Game.new(player_class: @player, computer: @computer)
    expect(@game.result).to eq :win
  end

  it "returns draw" do
    @computer = :Rock
    @game = Game.new(player_class: @player, computer: @computer)
    expect(@game.result).to eq :draw
  end


  
  
end