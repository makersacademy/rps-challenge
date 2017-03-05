require 'spec_helper'
require 'game'

describe Game do

  subject (:game) {Game.new(player)}
  let(:player) {double :player, :name => "Elizabeth" }


  it "should create new game and be able to return player name" do
    expect(game.player_name).to eq("Elizabeth")
  end

  it "should add choice to player array and computer choice" do
    allow(Kernel).to receive(:rand).and_return 1
    game.hand("Rock")
    expect(game.player_hand[0]).to eq("Rock")
    expect(game.player_hand[1]).to eq("Paper")
  end


end
