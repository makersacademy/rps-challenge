require 'spec_helper'
require 'game'

describe Game do

  subject (:game) {Game.new(player)}
  let(:player) {double :player, :name => "Elizabeth" }

  it "should create new game and be able to return player name" do
    expect(game.player_name).to eq("Elizabeth")
  end

  it "should add choice to player array" do
    game.hand("rock")
    expect(game.player_hand).to eq(["rock"])
  end
end
