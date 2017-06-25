require "game.rb"

describe Game do

  subject(:game)  { described_class.new("Simon") }

  it "let's player play the game" do
    expect(game.player1).to eq "Simon"
    end
  end
