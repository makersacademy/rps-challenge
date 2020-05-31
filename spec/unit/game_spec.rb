require 'game'

describe Game do
  let(:result1) { Game.new("rock", "scissors") }
  let(:result2) { Game.new("rock", "paper") }
  let(:result3) { Game.new("rock", "rock") }

  it "creates a game class" do
    expect(subject).to be_kind_of Game
  end

  it "has a player weapon and comp_weapon value" do
    expect(subject.instance_variable_get(:@weapon)).to eql("rock")
  end

  it "responds to play_game" do
    expect(subject).to respond_to :play_game
  end

  it "Player wins when they should" do
    expect(result1.play_game).to eq "rock beats scissors, player wins the round."
  end

  it "Player loses when they should" do
    expect(result2.play_game).to eq "You lose!!"
  end

  it "Draw when it should" do
    expect(result3.play_game).to eq "Draw"
  end
end
