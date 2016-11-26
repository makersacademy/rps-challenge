require './lib/game.rb'

describe Game do

  subject(:game) {described_class.new(player_klass, computer_klass)}
  let(:player_klass) {double :player_klass, name: "Louisa", :choice => nil}
  let(:computer_klass) {double :computer_klass, random_select: "Rock", choice: "Rock"}

  describe "#initializing" do
    context "Initializing with a player" do
      it "should accept a new Player instance" do
        expect(game.player1).to eq player_klass
      end
    end
  end

  describe "Instance of game" do
    context "#Game.create(player)" do
    it "should create a new instance of a game" do
      expect(Game.create("Louisa", computer_klass)).to be_a(Game)
    end
  end
    context "#Game.instance" do
      it "should access the new instance of the Game" do
        game = Game.create("Louisa", computer_klass)
        expect(Game.instance).to eq game
      end
    end
  end

  # describe "Displaying choices" do
  #   it "should display the select choices message" do
  #     expect(game.display_choice).to eq "Select ROCK, PAPER or SCISSORS"
  #   end

  #   it "should display computer's random choice" do
  #     allow(player_klass).to receive(:choice) {"Rock"}
  #     expect(game.display_computer_choice).to eq "Computer has chosen: Rock"
  #   end
  # end




end
