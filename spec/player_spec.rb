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
      player.choose(choice)
      expect(player.choice).to eq choice
     end

    it "can calculate draw" do
      choice = "scissors"
      player.choose(choice)
      allow(player).to receive(:computer_choice) {'scissors'}
      expect(player.game_result).to eq "draw"
    end

    it "can calculates win" do
      choice = "paper"
      player.choose(choice)
      allow(player).to receive(:computer_choice) {'rock'}
      expect(player.game_result).to eq "win"
    end

    it "can calculate loss" do
      choice = "paper"
      player.choose(choice)
      allow(player).to receive(:computer_choice) {'scissors'}
      expect(player.game_result).to eq "lose"
    end

  end

end
