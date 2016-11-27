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










end
