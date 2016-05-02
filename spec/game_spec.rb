require 'spec_helper'
require 'game'

describe Game do

  let(:player) { double :player, name: "Frank", choice: "rock" }
  subject(:game) { described_class.new(player) }


  describe '#initialize' do

    it 'receives a player' do
      expect(game.player.name).to eq("Frank")
    end

    it 'can recognise player choice' do
      expect(game.player.choice).to eq("rock")
    end
  end

  describe '#comp_choice' do
    it 'can receive a computer choice' do
      game.comp_choice
      expect(game.comp).to eq("scissors").or eq("paper").or eq("rock")
    end
  end

  describe '#play' do

    it 'player can win' do
      game.comp_set("scissors")
      expect(game.play).to eq("Frank wins")
    end

    it 'players can draw' do
      game.comp_set("rock")
      expect(game.play).to eq("Draw")
    end

    it 'player can lose' do
      game.comp_set("paper")
      expect(game.play).to eq("Computer wins")
    end

  end
end
