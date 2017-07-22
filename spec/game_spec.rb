require 'game'
require 'computer'

describe "Game" do
  subject(:game) { Game.new(sam, mac) }
  let(:sam) { double(:player, name: "Sam") }
  let(:mac) { double(:computer, name: "Mac") }


  describe 'initialize' do
    it "accepts a player instance" do
      expect(game.player).to eq sam
    end

    it "accepts a computer instance" do
      expect(game.computer).to eq mac
    end
  end

end
