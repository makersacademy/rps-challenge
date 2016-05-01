require './lib/game'

describe Game do

  let(:name) {double :name, player: "wayne"}
  subject(:game) {Game.new name }


  describe "#initialize" do
    it "Initializes with a player name"do
      expect(game.player).to be name
    end

    it "Initializes with player score at 0" do
      expect(game.player_score).to be 0
    end

    it "Initializes with computer score at 0" do
      expect(game.computer_score).to be 0
    end

  end

  describe "#result" do

    xit "changes computer score by 1" do
      Array.any_instance.stub(:sample).and_return("rocks")
      game.choices "scissors"
      expect{game.result}.to change{game.computer_score}.by(1)
    end

    before(:each) do
      Array.any_instance.stub(:sample).and_return("scissors")
      game.choices "scissors"
    end

    it "changes player score by 1" do
      game.choices "rock"
      expect{game.result}.to change{game.player_score}.by(1)
    end

    it "score doesnt change when a draw" do
      expect{game.result}.to_not change{game.computer_score}
    end

    xit "returns the result as a string" do
      expect(game.result).to be results
    end

  end

  describe "#choices" do

    xit "returns the choices array" do
      Array.any_instance.stub(:sample).and_return("rock")
      expect(game.choices "scissors").to be choices_array
    end

  end

  # describe "#pc_choice" do
  #
  #   xit "returns the computers random choice"
  #     Array.any_instance.stub(:sample).and_return("scissors")
  #     expect(game.pc_choice).to be "scissors"
  #   end

end
