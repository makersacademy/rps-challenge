require 'game'

describe Game do

  let(:fake_player) {Player.new("Lenny")}
  let(:fake_game) {Game.new(fake_player)}

  it "is created with a player who has a name" do
    expect(fake_game.player.name).to eq("Lenny")
  end

  it "can assign the AI a RPS selection" do
    allow(fake_game).to receive(:ai_choice).and_return ("rock")
    expect(fake_game.ai_choice).to eq("rock")
  end

  it "correctly evaluates a won game of RPS" do
    expect(fake_game.evaluation("rock", "paper")).to eq("You win. Congratulations!")
  end

  it "correctly evaluates a lost game of RPS" do
    expect(fake_game.evaluation("scissors", "paper")).to eq("You lose... better luck next time.")
  end

  it "correctly evaluates a drawn game of RPS" do
    expect(fake_game.evaluation("paper", "paper")).to eq("It's a tie. Great minds think alike.")
  end
end
