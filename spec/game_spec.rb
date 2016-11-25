require './lib/game'

describe Game do

  subject(:game_rock) { described_class.new("Rock") }
  subject(:game_paper) { described_class.new("Paper") }
  subject(:game_scissors) { described_class.new("Scissors") }
  # let(:choice) { double(:choice) }

  it "assigns user choice on instantiation" do
    expect(game_rock.user_choice).to eq "Rock"
  end

  it "generates a random choice of rock, paper or scissors" do
    expect(["Rock", "Paper", "Scissors"]).to include(game_rock.random_rps)
  end

  it "returns win if user chooses Rock and computer chooses Scissors" do
    allow(game_rock).to receive(:random_rps).and_return "Scissors"
    expect(game_rock.compare).to eq "Win"
  end

  it "returns win if user chooses Scissors and computer chooses Paper" do
    allow(game_scissors).to receive(:random_rps).and_return "Paper"
    expect(game_scissors.compare).to eq "Win"
  end

  it "returns win if user chooses Paper and computer chooses Rock" do
    allow(game_paper).to receive(:random_rps).and_return "Rock"
    expect(game_paper.compare).to eq "Win"
  end

  it "returns lose if user chooses Rock and computer chooses Paper" do
    allow(game_rock).to receive(:random_rps).and_return "Paper"
    expect(game_rock.compare).to eq "Lose"
  end

  it "returns lose if user chooses Scissors and computer chooses Rock" do
    allow(game_scissors).to receive(:random_rps).and_return "Rock"
    expect(game_scissors.compare).to eq "Lose"
  end

  it "returns lose if user chooses Paper and computer chooses Scissors" do
    allow(game_paper).to receive(:random_rps).and_return "Scissors"
    expect(game_paper.compare).to eq "Lose"
  end

  it "returns draw if user and computer choose Rock" do
    allow(game_rock).to receive(:random_rps).and_return "Rock"
    expect(game_rock.compare).to eq "Tie"
  end

  it "returns draw if user and computer choose Paper" do
    allow(game_paper).to receive(:random_rps).and_return "Paper"
    expect(game_paper.compare).to eq "Tie"
  end

  it "returns draw if user and computer choose the Scissors" do
    allow(game_scissors).to receive(:random_rps).and_return "Scissors"
    expect(game_scissors.compare).to eq "Tie"
  end

end
