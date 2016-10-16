require 'game'

describe Game do
  let(:player) {double :player}
  subject(:game) {described_class.new(player)}

  describe "#initialize" do
    it "is initialize with an array of choices" do
      expect(game.players).to be_a_kind_of Array
    end
  end

  describe "#choice" do
    it "checks if the result of the game" do
  game.instance_variable_set(:@result, 'Rock')
      expect(["Rock", "Paper", "Scissors"]).to include(game.result)
    end
  end


end
