require 'game'

describe Game do

  let(:game) {described_class.new(player,computer)}
  let(:computer) {double(:computer)}
  let(:player)   {double(:player)}

  context "When initialized it" do
    it "Has a computer" do
      expect(game.computer).to eq(computer)
    end

    it "Has a player" do
      expect(game.player).to eq(player)
    end
  end

  context "When using class method create, it" do

    before do
      @test_game = Game.create(player,computer)
    end

    it "should create an instance of the class" do
      expect(@test_game.class).to eq Game
    end

    it "should be able to be accessed using current_game method" do
      expect(Game.current_game).to be_instance_of(Game)
    end
  end

  context "When using the calculate method and the player wins" do
    it "Player chooses paper, computer chooses rock" do
      allow(player).to receive(:choice).and_return(1)
      allow(player).to receive(:name).and_return("Player")
      allow(computer).to receive(:choice).and_return(0)

      expect(game.calculate).to eq("Player Wins!")
    end

    it "player chooses rock, computer chooses scissors" do
      allow(player).to receive(:choice).and_return(0)
      allow(player).to receive(:name).and_return("Player")
      allow(computer).to receive(:choice).and_return(2)


      expect(game.calculate).to eq("Player Wins!")
    end

    it "player chooses scissors, computer chooses paper" do
      allow(player).to receive(:choice).and_return(2)
      allow(player).to receive(:name).and_return("Player")
      allow(computer).to receive(:choice).and_return(1)


      expect(game.calculate).to eq("Player Wins!")
    end
  end

  context "When using the calculate method and the computer wins" do
    it "computer chooses paper, player chooses rock" do
      allow(computer).to receive(:choice).and_return(1)
      allow(computer).to receive(:name).and_return("Hal")
      allow(player).to receive(:choice).and_return(0)

      expect(game.calculate).to eq("Hal Wins!")
    end

    it "computer chooses rock, player chooses scissors" do
      allow(computer).to receive(:choice).and_return(0)
      allow(computer).to receive(:name).and_return("Hal")
      allow(player).to receive(:choice).and_return(2)
      allow(player).to receive(:name).and_return("Player")



      expect(game.calculate).to eq("Hal Wins!")
    end

    it "computer chooses scissors, player chooses paper" do
      allow(computer).to receive(:choice).and_return(2)
      allow(computer).to receive(:name).and_return("Hal")
      allow(player).to receive(:choice).and_return(1)
      allow(player).to receive(:name).and_return("Player")


      expect(game.calculate).to eq("Hal Wins!")
    end
  end

  context "When using the calculate method and it's a draw" do
    it "both choose rock" do
      allow(computer).to receive(:choice).and_return(0)
      allow(computer).to receive(:name).and_return("Hal")
      allow(player).to receive(:choice).and_return(0)

      expect(game.calculate).to eq("Draw!")
    end

    it "both choose paper" do
      allow(computer).to receive(:choice).and_return(1)
      allow(computer).to receive(:name).and_return("Hal")
      allow(player).to receive(:choice).and_return(1)

      expect(game.calculate).to eq("Draw!")
    end

    it "both choose scissors" do
      allow(computer).to receive(:choice).and_return(2)
      allow(computer).to receive(:name).and_return("Hal")
      allow(player).to receive(:choice).and_return(2)

      expect(game.calculate).to eq("Draw!")
    end
  end
end
