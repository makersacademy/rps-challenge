require_relative '../app/lib/game'

describe Game do

  context "rock outcomes" do
    before do
      @player = double("Player", :choice => :Rock)
      @computer = double("Computer", :choice => :Paper)
    end

    it "rock vs paper is loss" do
      @game = Game.new(player_class: @player, computer_class: @computer)
      expect(@game.result).to eq :loss
    end

    it "rock vs scissors is a win" do
      allow(@computer).to receive(:choice).and_return(:Scissors)
      @game = Game.new(player_class: @player, computer_class: @computer)
      expect(@game.result).to eq :win
    end

    it "rock vs rock is draw" do
      allow(@computer).to receive(:choice).and_return(:Rock)
      @game = Game.new(player_class: @player, computer_class: @computer)
      expect(@game.result).to eq :draw
    end
  end

  context "paper outcomes" do
    before do
      @player = double("Player", :choice => :Paper)
      @computer = double("Computer", :choice => :Rock)
    end

    it "paper vs rock is win" do
      @game = Game.new(player_class: @player, computer_class: @computer)
      expect(@game.result).to eq :win
    end

    it "paper vs scissors is a loss" do
      allow(@computer).to receive(:choice).and_return(:Scissors)
      @game = Game.new(player_class: @player, computer_class: @computer)
      expect(@game.result).to eq :loss
    end

    it "paper vs paper is draw" do
      allow(@computer).to receive(:choice).and_return(:Paper)
      @game = Game.new(player_class: @player, computer_class: @computer)
      expect(@game.result).to eq :draw
    end
  end

  context "scissors outcomes" do
    before do
      @player = double("Player", :choice => :Scissors)
      @computer = double("Computer", :choice => :Rock)
    end

    it "scissors vs rock is loss" do
      @game = Game.new(player_class: @player, computer_class: @computer)
      expect(@game.result).to eq :loss
    end

    it "scissors vs paper is a win" do
      allow(@computer).to receive(:choice).and_return(:Paper)
      @game = Game.new(player_class: @player, computer_class: @computer)
      expect(@game.result).to eq :win
    end

    it "scissors vs scissors is draw" do
      allow(@computer).to receive(:choice).and_return(:Scissors)
      @game = Game.new(player_class: @player, computer_class: @computer)
      expect(@game.result).to eq :draw
    end
  end
end
