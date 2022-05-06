require 'player'

describe Player do

  describe "#player" do
    it "defines players input" do
      expect(subject).to respond_to(:player_choice)
    end
  end

end