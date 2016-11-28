require './lib/game'

describe Game do

  subject(:game) { described_class.new(name) }
  let(:name) { double(:name) }


  context "Class methods" do
    it "can create a new Game class using class method" do
      expect(Game.create("Jenna")).to be_an_instance_of(Game)
    end

    it "can reference current instance of Game class using class method" do
      expect(Game.instance).to be_an_instance_of(Game)
    end
  end

  context "Initialization" do
    it "assigns name on instantiation" do
      expect(game.name).to eq name
    end
  end

  context "Get user choice" do
    it "can get user's choice" do
      game.set_user_choice("Rock")
      expect(game.user_choice).to eq :Rock
    end
  end

  context "Get computer choice" do
    it "can get computer's choice" do
      expect([:Rock, :Paper, :Scissors]).to include(game.get_computer_choice)
    end

  end

  context "Results of the game" do
    it "returns win if user chooses Rock and computer chooses Scissors" do
      game.user_choice = :Rock
      allow(game).to receive(:get_computer_choice).and_return :Scissors
      expect(game.compare).to eq :win
    end

    it "returns win if user chooses Scissors and computer chooses Paper" do
      game.user_choice = :Scissors
      allow(game).to receive(:get_computer_choice).and_return :Paper
      expect(game.compare).to eq :win
    end

    it "returns win if user chooses Paper and computer chooses Rock" do
      game.user_choice = :Paper
      allow(game).to receive(:get_computer_choice).and_return :Rock
      expect(game.compare).to eq :win
    end

    it "returns lose if user chooses Rock and computer chooses Paper" do
      game.user_choice = :Rock
      allow(game).to receive(:get_computer_choice).and_return :Paper
      expect(game.compare).to eq :lose
    end

    it "returns lose if user chooses Scissors and computer chooses Rock" do
      game.user_choice = :Scissors
      allow(game).to receive(:get_computer_choice).and_return :Rock
      expect(game.compare).to eq :lose
    end

    it "returns lose if user chooses Paper and computer chooses Scissors" do
      game.user_choice = :Paper
      allow(game).to receive(:get_computer_choice).and_return :Scissors
      expect(game.compare).to eq :lose
    end

    it "returns draw if user and computer choose Rock" do
      game.user_choice = :Rock
      allow(game).to receive(:get_computer_choice).and_return :Rock
      expect(game.compare).to eq :tie
    end

    it "returns draw if user and computer choose Paper" do
      game.user_choice = :Paper
      allow(game).to receive(:get_computer_choice).and_return :Paper
      expect(game.compare).to eq :tie
    end

    it "returns draw if user and computer choose the Scissors" do
      game.user_choice = :Scissors
      allow(game).to receive(:get_computer_choice).and_return :Scissors
      expect(game.compare).to eq :tie
    end
  end


end
