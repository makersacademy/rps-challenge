require  'spec_helper'
require './lib/game.rb'

describe Game do

    subject(:game) {described_class.new(player1, computers_option)}
    let(:player1) { double :player1 }
    let(:player1choice) { double :player1choice }
    let(:computers_option) { double :computers_option }


  it "should let the computer pick an option" do
    allow(game).to receive(:computer_picks) {:Rock}
    expect(game.computer_picks).to eq :Rock
  end

  it "should return the right message if you win" do
    allow(game).to receive(:computers_option) {:Rock}
    allow(game).to receive(:player1choice) {:Paper}
    expect(game.result).to eq "You win"
  end

  it "should return the right message if it's a draw" do
    allow(game).to receive(:computers_option) {:Rock}
    allow(game).to receive(:player1choice) {:Rock}
    expect(game.result).to eq "It's a draw"
  end

  it "should return the right message if the computer wins" do
    allow(game).to receive(:computers_option) {:Rock}
    allow(game).to receive(:player1choice) {:Scissors}
    expect(game.result).to eq "Oh no! The computer wins this time!"
  end
end
