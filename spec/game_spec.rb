require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player }
  let(:human_choice) { "RAPER" }
  let(:computer_choice) { "PAPER" }

  it "returns random weapon" do
    allow(Game::OPTIONS).to receive(:sample) { "ROCK" }
    expect(game.computer_selection).to eq "ROCK"
  end

  it "should declare the winner" do
    allow(Game::OPTIONS).to receive(:sample) { "ROCK" }
    expect(game.computer_selection).to eq "ROCK"
    expect(game.result(human_choice, computer_choice)).to eq "COMPUTER BEAT YOU!"
  end
end
