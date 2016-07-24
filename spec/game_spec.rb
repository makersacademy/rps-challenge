require './lib/game'

describe Game do
  it 'chooses a random weapon' do
    game = Game.new("Paper")
    expect(game.weapon).to eq("Paper").or(eq("Rock")).or(eq("Scissors"))
  end

  describe "#fight" do
    it "calucates the outcome of the fight" do
      game = Game.new(:Paper)
      expect(game.fight).to eq(:win).or(eq(:lose)).or(eq(:draw))
    end
  end
end
