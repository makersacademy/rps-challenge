require 'player'

describe Player do

  let(:name) {double :name, name: "wayne"}
  subject(:player) {Player.new name }

  describe "#initialize"do

    xit "Stores a player name" do
      expect(player.name).to be name
    end

    xit "Stores Computer if no name passed" do
      pc = Player.new ""
      expect(pc.name).to be "Computer"
    end

    it "sets new player score to 0" do
      player1 = Player.new "Bob"
      expect(player1.score).to be 0
    end

  end

  describe "#save_choice" do

    xit "saves player choice to variable" do
      rock = "rock"
      player.save_choice
      expect(player.choice).to be rock
    end

  end

  describe "#win" do

    it "increases score by one" do
      player1 = Player.new "Bob"
      expect{player1.win}.to change{player1.score}.by 1
    end

  end

end
