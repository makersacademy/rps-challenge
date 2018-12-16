require "player"

describe Player do

  context "Sets up player" do
    name="Tom"
    player = Player.new(name)

    it "gives a player name when player initialized" do
      expect(player.name).to eq name
    end

    it "can store the value of rps choise" do
      choice = "scissors"
      player.choose("scissors")
      expect(player.choice).to eq choice
     end
  end

end
