require './lib/game'

describe Game do

  subject(:game_rock) { described_class.new("Rock") }
  subject(:game_paper) { described_class.new("Paper") }
  subject(:game_scissors) { described_class.new("Scissors") }

  it "can create a new Game class using class method" do
    expect(Game.create("Rock")).to be_an_instance_of(Game)
  end

  it "can reference current instance of Game class using class method" do
    expect(Game.instance).to be_an_instance_of(Game)
  end

  it "assigns user choice on instantiation" do
    expect(game_rock.user_choice).to eq "Rock"
  end

  it "generates a random choice of rock, paper or scissors" do
    expect(["Rock", "Paper", "Scissors"]).to include(game_rock.random_rps)
  end

  it "assigns a random choice of rock, paper or scissors to computer choice" do
    game_rock.compare
    expect(["Rock", "Paper", "Scissors"]).to include(game_rock.computer_choice)
  end

  it "returns win if user chooses Rock and computer chooses Scissors" do
    allow(game_rock).to receive(:random_rps).and_return "Scissors"
    expect(game_rock.compare).to eq :win
  end

  it "returns win if user chooses Scissors and computer chooses Paper" do
    allow(game_scissors).to receive(:random_rps).and_return "Paper"
    expect(game_scissors.compare).to eq :win
  end

  it "returns win if user chooses Paper and computer chooses Rock" do
    allow(game_paper).to receive(:random_rps).and_return "Rock"
    expect(game_paper.compare).to eq :win
  end

  it "returns lose if user chooses Rock and computer chooses Paper" do
    allow(game_rock).to receive(:random_rps).and_return "Paper"
    expect(game_rock.compare).to eq :lose
  end

  it "returns lose if user chooses Scissors and computer chooses Rock" do
    allow(game_scissors).to receive(:random_rps).and_return "Rock"
    expect(game_scissors.compare).to eq :lose
  end

  it "returns lose if user chooses Paper and computer chooses Scissors" do
    allow(game_paper).to receive(:random_rps).and_return "Scissors"
    expect(game_paper.compare).to eq :lose
  end

  it "returns draw if user and computer choose Rock" do
    allow(game_rock).to receive(:random_rps).and_return "Rock"
    expect(game_rock.compare).to eq :tie
  end

  it "returns draw if user and computer choose Paper" do
    allow(game_paper).to receive(:random_rps).and_return "Paper"
    expect(game_paper.compare).to eq :tie
  end

  it "returns draw if user and computer choose the Scissors" do
    allow(game_scissors).to receive(:random_rps).and_return "Scissors"
    expect(game_scissors.compare).to eq :tie
  end

end
