require 'game.rb'

describe Game do

  subject(:game) { described_class.new(mockPlayer_1, mockPlayer_2) }
  let(:mockPlayer_1) { double :player }
  let(:mockPlayer_2) { double :player }

  it "initializes with two players" do
    expect(game.player_1).to eq mockPlayer_1
    expect(game.player_2).to eq mockPlayer_2
  end

  it "initializes with a number of rounds to play" do
    expect(subject.rounds).to be_an Integer
  end

  it "compares player moves" do
    allow(mockPlayer_1).to receive(:name).and_return("Hamish")
    allow(mockPlayer_2).to receive(:name).and_return("Sarah")
    allow(game.player_1).to receive(:move).and_return("rock")
    allow(game.player_2).to receive(:move).and_return("paper")

    expect(game.round_winner).to eq "Sarah"
  end

  it "determines if the game is over" do
    game.winners << "Hamish"
    game.winners << "Hamish"
    game.winners << "Hamish"
    expect(game.end?).to eq true
  end

  it "determines a winner" do
    game.winners << "Hamish"
    game.winners << "Hamish"
    game.winners << "Hamish"
    allow(mockPlayer_1).to receive(:name).and_return("Hamish")
    allow(mockPlayer_2).to receive(:name).and_return("Sarah")
    expect(game.find_winner).to eq "Hamish"
  end

  it "resets to allow players to continue" do

  end


end
