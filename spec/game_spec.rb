require 'game'

describe Game do
  let(:player_1) { double(:player, name: "Harrison") }
  let(:player_2) { double(:player, name: "Computer") }
  let(:result_class) { double(:Result, new: result) }
  let(:result) { double(:result) }
  subject(:game) { Game.new(player_1, player_2, result_class) }

  it "should have players" do
    expect(game).to have_attributes(player_1: player_1, player_2: player_2)
  end

  describe "#outcome" do
    it "should display the game outcome" do
      expect(result).to receive(:message)
      game.outcome
    end
  end
  
end
